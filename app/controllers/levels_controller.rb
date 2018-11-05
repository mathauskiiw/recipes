class LevelsController < ApplicationController

  def index
    @levels = Level.all
  end

  def new
    @level = Level.new
  end

  def create
    @level = Level.new level_params
    if @level.save
      redirect_to root_path, notice: "Level salvo com sucesso!"
    else
      render :new
    end
  end



  private

    def level_params
      params.require(:level).permit(:name)
    end

end
