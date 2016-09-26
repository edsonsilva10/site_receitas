require 'rails_helper'
feature 'user create recipe' do
  scenario 'successfully' do

    create(:kitchen)

    visit new_recipe_path

    fill_in 'Nome da receita', with: 'Arroz'
    select  'Italiana',  from: 'Cozinha'
    fill_in 'Tipo de comida', with: 'estranha'
    fill_in 'Ingredientes', with: 'arroz'
    fill_in 'Passo a passo', with: 'primeiro'

    click_on 'Cadastrar Receita'

    expect(page).to have_content 'Arroz'
    expect(page).to have_content 'estranha'
    expect(page).to have_content 'arroz'
    expect(page).to have_content 'primeiro'

    visit recipes_path

    expect(page).to have_content 'Arroz'
  end
end
