class RemoveMeasurementsFromRecipes < ActiveRecord::Migration[6.0]
  def change
    remove_column :recipes, :measurements, :text

  end
end
