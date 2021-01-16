# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user = User.create(first_name: "alex", last_name: "r", email: "alex@gmail.com")
# user = User.create(first_name: "jim", last_name: "bob", email: "jimbob@gmail.com")


# ingredient = Ingredient.create(name: "orange bitters", description: "this is an orange bitter and stuff", category: "bitters", alcohol: "no")
# ingredient = Ingredient.create(name: "irish whiskey", description: "this is an irish whiskey and stuff", category: "whiskey", alcohol: "yes", abv: 40)
# ingredient = Ingredient.create(name: "absolut vodka", description: "this is a vodka and stuff", category: "vodka", alcohol: "yes", abv: 40)
# ingredient = Ingredient.create(name: "lemon absolut", description: "this is a vodka and stuff", category: "vodka", alcohol: "yes", abv: 35)

# ingredient = Ingredient.create(name: "orange juice", description: "this is a juice and stuff", category: "juice", alcohol: "no")
# ingredient = Ingredient.create(name: "watermelon absolut", description: "this is a vodka and stuff", category: "vodka", alcohol: "yes", abv: 30)
# ingredient = Ingredient.create(name: "lemon juice", description: "this is a juice and stuff", category: "juice", alcohol: "no")

# recipe = Recipe.create(name: "screwdriver", alcoholic: "yes", specific_ingredients: ["absolut vodka", "orange juice"], measurements: ["fsd", "sdfadf"], instructions: "asfakljdfklasjdfkjaksdfjajsfja;kfj;jksjlkfjdsfa;lksdjflkajsdflkjasdlkfjaslkdfjlaksjdflkasjkljafajksdhf;ajfdkjaskdfj;lakjsdf;jsadkfjslkjfd;lkj")
# recipe = Recipe.create(name: "whiskey oj", alcoholic: "yes", specific_ingredients: ["whiskey", "orange juice"], measurements: ["fsd3242", "sadfas23"], instructions: "asfakljdfklasjdfkjaksdfjajsfja;kfj;jksjlkfjdsfa;lksdjflkajsdflkjasdlkfjaslkd245q3453434fjlaksjdflkasjkljafajksdhf;ajfdkjaskdfj;lakjsdf;jsadkfjslkjfd;lkj")
# recipe = Recipe.create(name: "long island", alcoholic: "yes", specific_ingredients: ["watermelon absolut", "lemon juice"], measurements: ["fs234234d", "sdfa2342df"], instructions: "asfakljdfklasjdfkjaksdfjajsfja;kfj;jksjlkfjdsfa;lksdjflkajsdflkjasdlkfjaslkreq3h4434u8qpo8o8uypdfjlaksjdflkasjkljafajksdhf;ajfdkjaskdfj;lakjsdf;jsadkfjslkjfd;lkj")
# recipe = Recipe.create(name: "old fashioned", alcoholic: "yes", specific_ingredients: ["irish whiskey", "orange bitters", "lemon juice"], measurements: ["asdfacs", "geweerg", "adhflkuwh8"], instructions: "asfakljdfklasjdfkjaksdfjajsfja;kfj;jksjlkfjdsfa;lksdjflkajsdflkjasdlkfjaslkreq3h4434asdfjasdkfjaju8qpo8o8uypdfjlaksjdflkasjkljafajksdhf;ajfdkjaskdfj;lakjsdf;jsadkfjslkjfd;lkj")

# favorite = Favorite.create(user_id: 1, recipe_id: 1)
# favorite = Favorite.create(user_id: 1, recipe_id: 2)
# favorite = Favorite.create(user_id: 2, recipe_id: 2)



# require 'rest-client'

# index = 1
# while index < 612
#   ingredients = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?iid=' + index.to_s

#   ingredients_array = JSON.parse(ingredients)["ingredients"]

#   if ingredients_array == nil

#   else
#     ingredients_array.each do |ingredient|
#       Ingredient.create(
#         name: ingredient["strIngredient"].downcase,
#         description: ingredient["strDescription"],
#         category: ingredient["strType"],
#         alcohol: ingredient["strAlcohol"],
#         abv: ingredient["strABV"]
#       )
#     end
#   end
#   index +=1
# end



require 'rest-client'

index = 12565
while index < 17841
  recipes = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=' + index.to_s

  recipes_array = JSON.parse(recipes)["drinks"]
  if recipes_array == nil
    
  else
    recipes_array.each do |recipe|
      created_recipe = Recipe.create(
        name: recipe["strDrink"],
        alcoholic: recipe["strAlcoholic"],
        instructions: recipe["strInstructions"]
      )
      # Ingredient.where(name: recipe["strIngredient1"]).exists?

      ingredient = Ingredient.find_by!(name: recipe["strIngredient1"].downcase)
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure1"])
      
      
      if recipe["strIngredient2"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient2"].downcase)
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure2"])

      if recipe["strIngredient3"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient3"].downcase)
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure3"])
      
      if recipe["strIngredient4"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient4"].downcase)
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure4"])
    
      if recipe["strIngredient5"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient5"].downcase)
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure5"])
    
      if recipe["strIngredient6"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient6"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure6"])
    
      if recipe["strIngredient7"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient7"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure7"])
    
      if recipe["strIngredient8"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient8"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure8"])
    
      if recipe["strIngredient9"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient9"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure9"])
    
      if recipe["strIngredient10"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient10"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure10"])
      
      if recipe["strIngredient11"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient11"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure11"])
    
      if recipe["strIngredient12"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient12"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure12"])
    
      if recipe["strIngredient13"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient13"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure13"])
    
      if recipe["strIngredient14"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient14"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure14"])
    
      if recipe["strIngredient15"] == nil
        break
      end
      ingredient = Ingredient.find_by!(name: recipe["strIngredient15"].downcase)   
      IngredientRecipe.create(ingredient_id: ingredient.id, recipe_id: created_recipe.id, measurement: recipe["strMeasure15"])
    end
  end
  index +=1
end

