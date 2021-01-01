class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render 'index.json.jb'
  end
end
