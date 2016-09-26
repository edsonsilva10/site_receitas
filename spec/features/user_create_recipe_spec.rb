require 'rails_helper'
feature 'user create recipe' do
  scenario 'successfully' do

    recipe = build(:recipe)

    visit new_recipe_path

    fill_in 'Nome da receita', with: recipe.recipe_name
    fill_in 'Cozinha', with: recipe.kitchen
    fill_in 'Tipo de comida', with: recipe.kind_food
    fill_in 'Quantas pessoas serve', with: recipe.how_many_people_serve
    fill_in 'Tempo de preparo', with: recipe.preparation_time
    fill_in 'Nível de dificuldade', with: recipe.difficulty_level
    fill_in 'Ingredientes', with: recipe.ingredients
    fill_in 'Passo a passo', with: recipe.step_by_step

    click_on 'Cadastrar Receita'

    expect(page).to have_content recipe.recipe_name
    expect(page).to have_content recipe.kitchen
    expect(page).to have_content recipe.kind_food
    expect(page).to have_content recipe.how_many_people_serve
    expect(page).to have_content recipe.preparation_time
    expect(page).to have_content recipe.difficulty_level
    expect(page).to have_content recipe.ingredients
    expect(page).to have_content recipe.step_by_step
  end
end
