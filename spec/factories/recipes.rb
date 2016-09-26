FactoryGirl.define do
  factory :recipe do
    recipe_name 'Arroz'
    kitchen 'carnes'
    kind_food 'food'
    how_many_people_serve 13
    preparation_time 12
    difficulty_level 'hard'
    ingredients 'arroz, feijao'
    step_by_step 'primeiro....'
  end
end
