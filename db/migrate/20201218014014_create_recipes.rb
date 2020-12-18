class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :alcoholic
      t.string :ingredients
      t.string :measurements
      t.string :instructions

      t.timestamps
    end
  end
end
