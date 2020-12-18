class User < ApplicationRecord
  has_many :recipes, through :favorites
  has_many :favorites
end
