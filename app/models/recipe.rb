class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: :true

  def has_at_least_one_ingredient(ingredients)
    self.ingredients.each do |recipeIngredient|
      ingredients.each do |ingredient|
        if recipeIngredient.name == ingredient.name
          return true
        end
      end
    end
    return false
  end

end
