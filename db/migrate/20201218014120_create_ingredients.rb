class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :alcohol
      t.integer :abv

      t.timestamps
    end
  end
end
