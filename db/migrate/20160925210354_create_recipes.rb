class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :repipe_name
      t.string :kitchen
      t.string :kind_food
      t.integer :how_many_people_serve
      t.integer :preparation_time
      t.string :difficulty_level
      t.text :ingredients
      t.text :step_by_step

      t.timestamps
    end
  end
end
