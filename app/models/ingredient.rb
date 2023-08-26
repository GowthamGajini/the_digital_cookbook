class Ingredient < ApplicationRecord
	validates :name, presence: true, length: { maximum: 100 }
	has_many :recipe_ingredients
	has_many :recipes, through: :recipe_ingredients	
end
