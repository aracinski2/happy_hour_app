class Api::RecipesController < ApplicationController
  def index
    random_recipe = Recipe.all.sample
    random_recipe_array = []
    random_recipe_array << random_recipe
    @recipes = random_recipe_array


    search_term = params[:search]
    
    if search_term == "category"
      category = Ingredient.where(category: params[:category])
      category_recipes = []
      category.each do |ingredient|
        ingredient_recipes = ingredient.recipes
        ingredient_recipes.each do |ingredient_recipe|
          category_recipes << ingredient_recipe
        end
      end
      category_recipes.uniq!
      @recipes = category_recipes

    elsif search_term == "ingredient"
      ingredient_recipes = []
      ingredient1 = Ingredient.find_by(name: params[:ingredient1]) 
      ingredient_recipes << ingredient1.recipes
        
      ingredient2 = Ingredient.find_by(name: params[:ingredient2]) 
      if ingredient2 == nil
        
      else
        ingredient_recipes << ingredient2.recipes
      end

      ingredient3 = Ingredient.find_by(name: params[:ingredient3]) 
      if ingredient3 == nil
        
      else
        ingredient_recipes << ingredient3.recipes
      end

      ingredient_recipes.flatten!
      ingredient_recipes.uniq!
      @recipes = ingredient_recipes
      # @recipes << ingredient2.recipes
      # @recipes.flatten



    elsif search_term == "name"
      name = Recipe.where("name ILIKE '%#{params[:name]}%'")
      @recipes = name
    end

    render 'index.json.jb'
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render 'show.json.jb'
  end
end


# throw name.recipes into for each loop to dump recipes into @recipes, do it for each modal igredient to get big list of ingredients

# .flatten 
# break if nil