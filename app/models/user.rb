class User < ApplicationRecord
  acts_as_voter

  has_many :recipes
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
