class Api::RecipesController < ApplicationController
  def index
    # @recipes = Recipe.all
    search_term = params[:search]

    # category = Ingredient.find_by(params[:search].to_sym: params[:category])
    # @recipes = category.recipes

    if search_term == "category"
      category = Ingredient.where(category: params[:category])
      category_recipes = []
      category.each do |ingredient|
        ingredient_recipes = ingredient.recipes
        ingredient_recipes.each do |ingredient_recipe|
          category_recipes << ingredient_recipe
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
