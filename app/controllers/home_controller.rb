class HomeController < ApplicationController

  include RecipesHelper

  def index
    @recipes = Recipe.all.order(:cached_votes_score => :desc)
    @ingredients = Ingredient.all
    if params[:name].present?
      @ingredients = Ingredient.where("name LIKE ?", "%#{params[:name]}%")
      @recipes = recipes_with_ingredients(@ingredients)
    end

    # @recipes = Recipe.all
    # if params[:title].present?
    #   @recipes = Recipe.where("title LIKE ?", "%#{params[:title]}%")
    # end
  end
end
