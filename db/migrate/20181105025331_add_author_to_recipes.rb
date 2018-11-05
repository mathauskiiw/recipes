class AddAuthorToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :author, foreign_key: true
  end
end
