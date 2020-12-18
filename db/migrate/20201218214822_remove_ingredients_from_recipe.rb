class RemoveIngredientsFromRecipe < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :ingredients, :text
    
  end
end
