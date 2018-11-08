class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new categorie_params
    if @category.save
      redirect_to root_path, notice: "Categoria salva com sucesso!"
    else
      render :new
    end
  end



  private

    def categorie_params
      params.require(:category).permit(:name)
    end

end
