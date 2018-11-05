class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :users
  has_many :recipes_ingredients
  has_many :ingredients, through: :recipes_ingredients
end
