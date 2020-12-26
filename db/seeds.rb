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

# index = 552
# while index < 554
#   ingredients = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?iid=' + index.to_s

#   ingredients_array = JSON.parse(ingredients)["ingredients"]

#   ingredients_array.each do |ingredient|
#     Ingredient.create(
#       name: ingredient["strIngredient"],
#       description: ingredient["strDescription"],
#       category: ingredient["strType"],
#       alcohol: ingredient["strAlcohol"],
#       abv: ingredient["strABV"]
#     )
#   end
#   index +=1
# end



require 'rest-client'

index = 11007
while index < 11008
  recipes = RestClient.get 'https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=' + index.to_s

  recipes_array = JSON.parse(recipes)["drinks"]

  recipes_array.each do |recipe|
    Recipe.create(
      name: recipe["strDrink"],
      alcoholic: recipe["strAlcoholic"],
      # specific_ingredients: [
      # recipe["strIngredient1"], 
      # recipe["strIngredient2"],
      # recipe["strIngredient3"],
      # recipe["strIngredient4"],
      # recipe["strIngredient5"],
      # recipe["strIngredient6"],
      # recipe["strIngredient7"],
      # recipe["strIngredient8"],
      # recipe["strIngredient9"],
      # recipe["strIngredient10"],
      # recipe["strIngredient11"],
      # recipe["strIngredient12"],
      # recipe["strIngredient13"],
      # recipe["strIngredient14"],
      # recipe["strIngredient15"]
      # ],
      
      measurements: [
      recipe["strMeasure1"],
      recipe["strMeasure2"],
      recipe["strMeasure3"],
      recipe["strMeasure4"],
      recipe["strMeasure5"],
      recipe["strMeasure6"],
      recipe["strMeasure7"],
      recipe["strMeasure8"],
      recipe["strMeasure9"],
      recipe["strMeasure10"],
      recipe["strMeasure11"],
      recipe["strMeasure12"],
      recipe["strMeasure13"],
      recipe["strMeasure14"],
      recipe["strMeasure15"]
      ],
      
      instructions: recipe["strInstructions"]
    )
  end
  index +=1
end



