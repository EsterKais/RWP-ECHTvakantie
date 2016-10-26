class ThemesController < ApplicationController
  before_action :set_theme, only: [:edit, :update, :show]

  # vacations should only be set for :edit, :update, :destroy
  # in :show we set it 'manually' in the show method because we wanna use filters!
  before_action :set_vacations, only: [:edit, :update, :destroy]

  # here we set all photos, meaning all (!) vphotos and tphotos belonging to the theme
  # However, setting all (!) vphotos here, might slow down the service
  before_action :set_photos, only: [:edit, :show, :destroy]


  # for index we'll just feed as much as we got
  def index
    @vacations = Vacation.all
    @themes = Theme.all
    @vphotos = Vphoto.all
    @tphotos = Tphoto.all
    @reviews = Review.all
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



  # # PIM WIP from here onwards
  # def show
  #   @vacations = @theme.vacations.
  #     filtered(params[:filters])
  # end
  #
  # def by_title
  #   @vacations = @theme.vacations.by_name
  # end
  #
  # def by_created_at
  #   @vacations = @theme.vacations.created_at
  # end
  #
  # def by_price
  #   @vacations = @theme.vacations.by_price
  # end
  #
  # def by_country
  #   @vacations = @theme.vacations.by_country
  # end
  #
  # def by_location
  #   @vacations = @theme.vacations.by_location
  # end
  #
  # def by_address
  #   @vacations = @theme.vacations.by_address
  # end


  private

  def set_vacations
    @vacations = @theme.vacations
  end

  def set_theme
    @theme = Theme.find_by_name(params[:name])
  end

  def set_photos
    # set all vphotos
    @vphotos = Vacation.vphotos

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
