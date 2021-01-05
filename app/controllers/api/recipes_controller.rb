class Api::RecipesController < ApplicationController
  def index
    # @recipes = Recipe.all
    search_term = "category"

    # category = Ingredient.find_by(params[:search].to_sym: params[:category])
    # @recipes = category.recipes

    if search_term == "category"
      category = Ingredient.where(category: "Whisky")
      category_recipes = []
      category.each do |ingredient|
        ingredient = ingredient.recipes
        ingredient.each do |ingredient_recipes|
          category_recipes << ingredient_recipes
        end
      end
      @recipes = category_recipes
    elsif search_term == "ingredient"
      name = Ingredient.where(name: params[:name])
      @recipes = name.recipes
    end

    render 'index.json.jb'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
