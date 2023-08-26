class Recipe < ApplicationRecord
	validates :name, :instructions, :cooking_time, presence: true
	validates :name, length: { maximum: 100 }
	validates :instructions, length: { maximum: 1000 }
	validates :cooking_time, numericality: { greater_than_or_equal_to: 1 }
	
	has_many :recipe_ingredients
	has_many :ingredients, through: :recipe_ingredients

    def add_ingredients(ingredients)
    	ingredients = ingredients.map(&:titleize)
    	ingredients_available = Ingredient.where(name: ingredients).pluck(:name, :id).to_h
    	ingredients_unavailable = ingredients - ingredients_available.keys
    	ingredients_unavailable.each do |ingredient_name|
    		ingredient_obj = Ingredient.find_or_create_by(name: ingredient_name)
    		ingredients_available[ingredient_name] = ingredient_obj.id
    	end
    	ingredients.each do |ingredient_name|
    		RecipeIngredient.find_or_create_by(recipe_id: self.id, ingredient_id: ingredients_available[ingredient_name])
    	end
    end

    def self.search(cuisine, ingredient)
    	recipes = nil
    	if ingredient.present?
    		recipes = Recipe.joins(:ingredients).where("LOWER(ingredients.name) LIKE LOWER('%#{ingredient}%')")
    	end
    	if cuisine.present?

    		if recipes.present?
    			recipes = recipes.where("LOWER(cuisine) LIKE LOWER('%#{cuisine}%')")
    		else
    			recipes = Recipe.where("LOWER(cuisine) LIKE LOWER('%#{cuisine}%')")
    		end
    	end
    	recipes
    end
end
