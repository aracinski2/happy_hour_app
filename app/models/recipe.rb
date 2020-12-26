class Recipe < ApplicationRecord
  has_many :favorites
  has_many :users, through: :favorites

  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes
end
