class Recipe < ApplicationRecord
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "120x90#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :kitchen
  validates :recipe_name, :kitchen, :kind_food, :ingredients, :step_by_step,
  presence: true
end
