class RemoveRepipeNameFromRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :repipe_name, :string
  end
end
