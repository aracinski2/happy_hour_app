class AddMeasurementsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :measurements, :text, array: true, default: []
  end
end
