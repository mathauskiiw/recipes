class RecipesController < InheritedResources::Base
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @recipes = Recipe.all
  end
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new recipe_params
    @recipe.user = current_user
    if @recipe.save
      redirect_to root_path, notice: "Receita salva com sucesso!"
    else
      render :new
    end
  end

  def edit
    @recipe = Recipe.find params[:id]
  end

  def update
    @recipe = Recipe.find params[:id]
    if @recipe.update recipe_params
      redirect_to recipe_path(@recipe.id), notice: "Receita atualizada com sucesso!"
    else
      render :edit, alert: "Informações inválidas, verifique!"
    end
  end
  def show
    @recipe = Recipe.find(params[:id])
  end

  def destroy
    @recipe = Recipe.find params[:id]
    @recipe.destroy
    redirect_to root_url, notice: "Receita removida!"
  end

  private

    def recipe_params
      params.require(:recipe).permit(:title, :body, :user_id, :category_id)
    end

end
