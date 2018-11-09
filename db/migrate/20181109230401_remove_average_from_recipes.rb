class RemoveAverageFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :Average, :float
  end
end
