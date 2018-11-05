class AddAverageToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :Average, :float
  end
end
