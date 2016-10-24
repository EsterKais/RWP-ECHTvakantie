class ThemesController < ApplicationController

  # homepage
  def index
    @themes = Theme.all
  end

  def show
    @theme = Theme.find(theme_params[:name])
  end

  def destroy
    @theme = Theme.find(theme_params[:name])

    @theme.destroy

    redirect_to root_path
  end

  def edit
    @theme = Theme.find(theme_params[:name])
  end

  def update
    @theme = Theme.find(theme_params[:name])

    if @theme.update_attributes( theme_params )
      redirect_to theme_path(@theme), notice: "Update succesvol"
    else
      render :edit
    end
  end

  private
  def theme_params
    params.require(:theme).permit(:name, :style, :description)
  end

end
