class ThemesController < ApplicationController
  before_action :set_theme, only: [:edit, :update, :show]

  # vacations should only be set for :edit, :update, :destroy
  # in :show we set it 'manually' in the show method because we wanna use filters!
  before_action :set_vacations, only: [:edit, :update, :destroy]

  # here we set all photos, meaning all (!) vphotos and tphotos belonging to the theme
  # However, setting all (!) vphotos here, might slow down the service
  before_action :set_photos, only: [:edit, :show, :destroy]

  # never touch this again
  # so we did touch it again. We need an if to make sure nothing happens when there is no params[:filters]
  def show
    if params[:filters] != nil
      # Maybe, when thing get buggy, we wanna clean up @vacations before applying the filter like so, #@vacations = []
      @vacations = @theme.vacations.filtered(params[:filters])
    else
      @vacations = @theme.vacations
    end
  end

  # for index we'll just feed as much as we got
  def index
    @vacations = Vacation.all
    @themes = Theme.all
    @vphotos = Vphoto.all
    @tphotos = Tphoto.all
    @reviews = Review.all
  end

  def new

    if current_user.name == "Vincent"
        @theme = Theme.new
    end

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



  private

  def set_vacations
    @vacations = @theme.vacations
  end

  def set_theme
    @theme = Theme.find_by_name(params[:name])
  end

  def set_photos
    # set all vphotos
    @vphotos = Vphoto.all

    # set photos belonging to this theme
    @tphotos = @theme.tphotos
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def theme_params
    params.require(:theme).permit(:name, :style, :description)
  end
end
