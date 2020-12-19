class CreateIngredientsRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients_recipes, id: false do |t|
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
