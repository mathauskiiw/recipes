class RemoveAuthorFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_reference :recipes, :author, foreign_key: true
  end
end
