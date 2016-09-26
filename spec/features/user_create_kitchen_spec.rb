require 'rails_helper'
feature 'user create kitchen' do
  scenario 'successfully' do
    kitchen = create(:kitchen)

    visit new_kitchen_path

    fill_in 'Nome', with: kitchen.name

    click_on 'Cadastrar Cozinha'

    expect(page).to have_content kitchen.name
  end
end
