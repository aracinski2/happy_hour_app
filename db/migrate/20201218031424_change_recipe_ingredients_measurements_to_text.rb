class ChangeRecipeIngredientsMeasurementsToText < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :ingredients, :text
    change_column :recipes, :measurements, :text
  end
end
