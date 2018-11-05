class AddFullRatingToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :fullRating, :integer
  end
end
