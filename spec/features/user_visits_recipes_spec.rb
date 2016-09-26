require 'rails_helper'
feature 'user create recipe' do
  scenario 'successfully' do
    recipe = create(:recipe)

    visit recipes_path

    expect(page).to have_content recipe.recipe_name
  end
end
