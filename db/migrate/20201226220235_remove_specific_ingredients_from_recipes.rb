class RemoveSpecificIngredientsFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :specific_ingredients, :string
  end
end
