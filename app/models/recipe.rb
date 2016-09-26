class Recipe < ApplicationRecord
  belongs_to :kitchen
  validates :recipe_name, :kitchen, :kind_food, :ingredients, :step_by_step,
  presence: true
end
