class RemoveFullRatingFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :fullRating, :integer
  end
end
