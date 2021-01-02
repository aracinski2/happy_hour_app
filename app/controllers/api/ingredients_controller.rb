class Api::IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    # ingredient = Ingredient.find_by(name: params[:name])
    
    # @ingredients = ingredient.recipes
    render 'index.json.jb'
  end
end
