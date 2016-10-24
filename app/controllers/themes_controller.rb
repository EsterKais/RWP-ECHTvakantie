class ThemesController < ApplicationController

  # homepage
  def index
    @themes = Theme.all
  end

  def new
    @theme = Theme.new
  end

  def create
    @theme = Theme.new( theme_params )

    if @theme.save
      redirect_to theme_path(@theme)
    else
      render 'new'
    end
  end


  def show
    @theme = Theme.find_by_name(params[:name])
  end

  def destroy
    @theme = Theme.find_by_name(params[:name])

    @theme.destroy

    redirect_to root_path
  end

  def edit
    @theme = Theme.find_by_name(params[:name])
  end

  def update
    @theme = Theme.find_by_name(params[:name])

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
