recipe1_ingredients = ["Chicken", "Ramen Noodles", "Egg", "Soy Sauce", "Sesame Oil", "Green Onions", "Spinach", "Carrots"]
recipe1 = Recipe.create(
  name: "Homemade Ramen",
  instructions: "1. Boil Water: In a pot, bring 4 cups of water to a boil. 2. Add Broth: Pour in the chicken or vegetable broth to the boiling water. 3. Season: Add 2 teaspoons of soy sauce and 1 teaspoon of sesame oil to the broth. Stir to combine. 4. Cook Noodles: Add the ramen noodles to the broth. Cook them according to the package instructions, usually around 2-3 minutes, until they are al dente. 5. Prepare Toppings: While the noodles cook, prepare your preferred toppings. Slice green onions, boil eggs, cook meat or tofu, and get any other desired toppings ready. 6. Assemble: Once the noodles are cooked, carefully transfer the noodles and the flavorful broth to serving bowls. 7. Add Toppings: Garnish your ramen with sliced green onions, boiled egg halves, cooked meat or tofu, nori seaweed, and any vegetables you like, such as spinach or sliced carrots. 8. Serve: Your homemade ramen is ready to be enjoyed! Serve it while it's still hot. ",
  cooking_time: 20,
  cuisine: "Asian"
)
recipe1.add_ingredients(recipe1_ingredients)

recipe2_ingredients = ["Chicken", "Onion", "Bell Pepper", "Tomato", "Ground Cumin", "Chili Powder", "Salt", "Black Beans", "Corn", "Lime"]
recipe2 = Recipe.create(
  name: "Chicken Chili",
  instructions: "1. In a large pot, brown the Chicken over...",
  cooking_time: 45,
  cuisine: "American"
)
recipe2.add_ingredients(recipe2_ingredients)

recipe3_ingredients = recipe2_ingredients = ["Onion", "Bell Pepper", "Black Beans", "Corn", "Lime"]
recipe3 = Recipe.create(
  name: "Vegetable Stir-Fry",
  instructions: "1. Heat oil in a pan and sauté onion...",
  cooking_time: 25,
  cuisine: "Asian"
)
recipe3.add_ingredients(recipe3_ingredients)

recipe4_ingredients = ["Salmon", "Dill", "Lemon", "Olive Oil", "Salt"]
recipe4 = Recipe.create(
  name: "Grilled Salmon",
  instructions: "1. Preheat the grill and prepare the salmon fillets...\n",
  cooking_time: 15,
  cuisine: "American"
)
recipe4.add_ingredients(recipe4_ingredients)

recipe5_ingredients = ["Garlic", "Olive Oil", "Pasta", "Cream", "Parmesan Cheese"]
recipe5 = Recipe.create(
  name: "Creamy Garlic Pasta",
  instructions: "1. Cook the pasta according to package instructions...\n",
  cooking_time: 20,
  cuisine: "Italian"
)
recipe5.add_ingredients(recipe5_ingredients)

