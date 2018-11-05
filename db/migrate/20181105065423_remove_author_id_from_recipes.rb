class RemoveAuthorIdFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :author_id, :bigint
  end
end
