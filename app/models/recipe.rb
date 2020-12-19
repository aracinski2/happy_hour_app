class Recipe < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites

  has_and_belongs_to_many :ingredients
end
