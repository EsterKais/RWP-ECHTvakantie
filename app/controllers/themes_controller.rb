class ThemesController < ApplicationController

  # sorting helper_method
  helper_method :sort_vacations, :sort_direction

  before_action :set_theme, only: [:edit, :update, :show]

  # vacations should only be set for :edit, :update, :destroy
  # in :show we set it 'manually' in the show method because we wanna use filters!
  before_action :set_vacations, only: [:edit, :update, :destroy]

  # here we set all photos, meaning all (!) vphotos and tphotos belonging to the theme
  # However, setting all (!) vphotos here, might slow down the service
  before_action :set_photos, only: [:edit, :show, :destroy]

  # here's the good stuff
  before_action :set_filtered_vacations, only: [:show]


  def show
    # here's the good stuff
    set_unique('region')
    set_unique('country')
  end

  # for index we'll just feed as much as we got
  def index
    @vacations = Vacation.all
    @themes = Theme.all
    @vphotos = Vphoto.all
    @tphotos = Tphoto.all
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

    @theme.tphotos[0].destroy
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
      redirect_to theme_path(@theme), notice: "Update succesvol"
    else
      render :edit
    end
  end



  private

  def set_vacations
    if @theme.present?
      @vacations = @theme.vacations
    end
  end

  def set_theme
    @theme = Theme.find_by_name(params[:name])
    @page_title = @theme.name
    @page_description = @theme.description
  end

  def set_unique(type)
    # first we get all the countries and regions of all the vacations in this theme
    all_regions = []
    all_countries = []
    @theme.vacations.each do |vacation|
      all_countries << vacation.country
      all_regions << vacation.region
    end

    # then we make sure we only have unique ones
    @unique_countries = all_countries.uniq
    @unique_regions = all_regions.uniq

    # then we return them, depending on what is asked for
    if type == 'country'
      return @unique_countries
      elsif type == 'region'
        return @unique_regions
      end
  end

  def set_filtered_vacations
    if params[:filters] != nil
      # Maybe, when thing get buggy, we wanna clean up @vacations before applying the filter like so, #@vacations = []
      # sort_vacations & sort_direction are in ApplicationController
      @vacations = @theme.vacations.filtered(params[:filters])
                       .order(sort_vacations + ' ' + sort_direction)
    else
      @vacations = @theme.vacations.order(sort_vacations + ' ' + sort_direction)
    end
  end


  def set_photos
    # set all vphotos
    @vphotos = Vphoto.all

    # set photos belonging to this theme
    if @theme.present?
      @tphotos = @theme.tphotos
    end
  end

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def theme_params
    params.require(:theme).permit(:name, :style, :description)
  end
end
