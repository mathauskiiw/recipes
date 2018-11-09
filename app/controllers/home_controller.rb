class HomeController < ApplicationController
  def index
    @recipes = Recipe.all
    if params[:title].present?
      @recipes = Recipe.where("title LIKE ?", "%#{params[:title]}%")
    end
  end
end
