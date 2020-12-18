class AddIngredientsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :ingredients, :text, array: true, default: []
  end
end
