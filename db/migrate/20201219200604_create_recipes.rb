class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :alcoholic
      t.string :specific_ingredients, array: true, default: []
      t.string :measurements, array: true, default: []
      t.text :instructions

      t.timestamps
    end
  end
end
