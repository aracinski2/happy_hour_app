class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    # search_term = params[:search]

    # category = Ingredient.find_by(params[:search].to_sym: params[:category])
    # @recipes = category.recipes

    # if search_term == "category"
    #   category = Ingredient.find_by(category: params[:category])
    #   @recipes = category.recipes
    # elsif search_term == "ingredient"
    #   name = Ingredient.find_by(name: params[:name])
    #   @recipes = name.recipes
    # end

    render 'index.json.jb'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
