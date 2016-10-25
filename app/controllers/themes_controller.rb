class ThemesController < ApplicationController
  before_action :set_theme, only: [:edit, :update, :show]

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


  def show

    @tphotos = @theme.tphotos

    @vacations = @theme.vacations

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

  # def by_name
  #   @artists = Artist.by_name
  # end
  #
  # def by_created_at
  #   @artists = Artist.by_created_at
  # end

  private

  def set_theme
    @theme = Theme.find_by_name(params[:name])
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def theme_params
    params.require(:theme).permit(:name, :style, :description)
  end

end
