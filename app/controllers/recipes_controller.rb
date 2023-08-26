class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def search
    @recipes = Recipe.search(search_params[:cuisine], search_params[:ingredient])
  end

  private
  def search_params
    params.permit(:ingredient, :cuisine)
  end
end
