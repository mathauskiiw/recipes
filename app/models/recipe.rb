class Recipe < ApplicationRecord
  belongs_to :category
  belongs_to :user

  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients, allow_destroy: :true

end
