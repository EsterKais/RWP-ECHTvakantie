class ThemesController < ApplicationController
  before_action :set_theme, only: [:edit, :update, :show]
  before_action :set_vacations, only: [:edit, :update, :show, :destroy]

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
      image_params.each do |image|
      @theme.tphotos.create(image: image)
    end
    redirect_to theme_path(@theme), notice: "Room successfully created"
    else
      render :new
    end
  end




  def destroy
    @theme = Theme.find_by_name(params[:name])

    @theme.destroy

    redirect_to root_path
  end

  def edit
    @tphotos = @theme.tphotos
  end

  def update
    if @theme.update(theme_params)
      image_params.each do |image|
        @theme.tphotos.create(image: image)
      end
      redirect_to edit_theme_path(@theme), notice: "Update succesvol"
    else
      render :edit
    end
  end

  def show
    @vacations = @theme.vacations.
      filtered(params[:filters])
  end

  private

  def set_vacations
    @vacations = @theme.vacations
  end

  def set_theme
    @theme = Theme.find_by_name(params[:name])

    @tphotos = @theme.tphotos

  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def theme_params
    params.require(:theme).permit(:name, :style, :description)
  end

end
