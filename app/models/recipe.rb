class Recipe < ApplicationRecord
  validates :recipe_name, :kitchen, :kind_food, :how_many_people_serve,
  :preparation_time, :difficulty_level, :ingredients, :step_by_step,
  presence: true
end
