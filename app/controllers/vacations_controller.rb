class VacationsController < ApplicationController
  helper_method :sort_vacations, :sort_direction
  before_action :set_vacation, only: [:edit, :update, :show, :destroy]
  before_action :set_themes, only: [:edit, :update, :show, :destroy]

  # there is only 1 review
  before_action :set_review, only: [:edit, :update, :show, :destroy]

  # where do we wanna set which photos???
  # one thing is for sure: in update we wanna set vphotos ourselves (using build_photos method) because there we delete or add new ones
  before_action :set_photos, only: [:edit, :show, :destroy]


  # for index we'll just feed as much as we got
  def index
    @vacations = Vacation.all

    # typo: should be Theme not THemes
    @themes = Theme.all
    @vphotos = Vphoto.all
    @tphoto = Tphoto.all


    if params[:search]
      @vacations = Vacation.search(params[:search]).order("created_at DESC")
    else
      @vacations = Vacation.all.order("created_at DESC")
    end
  end

  def new
    @vacation = Vacation.new
  end

  def create
    @vacation = Vacation.new(vacation_params)
    build_photos
    if @vacation.save
      redirect_to vacation_path(@vacation), notice: "Vakantie succesvol aangemaakt."
    else
      render :new
    end
  end

  def show
    @themes = Theme.all
    @vacations = Vacation.order("RANDOM()").all
  end

  def destroy
    @vacation.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    build_photos
    if @vacation.update(vacation_params)
      redirect_to vacation_path(@vacation), notice: "Update succesvol"
    else
      render :edit
    end
  end

  private

  def set_vacation
    @vacation = Vacation.find_by_title(params[:title])
    @page_title = @vacation.title
    @page_description = @vacation.description
  end


  def set_themes
    @themes = @vacation.themes
  end

  def set_review
    @review = @vacation.review
  end

  def set_photos
    # set photos belonging to this vacation
    @vphotos = @vacation.vphotos

    # set photos belonging to all themes belonging to this vacation:
    # so first we need to get all themes
    # and we push inside an array all photos belonging to each theme
    @tphotos = []
    @vacation.themes.each do |theme|
      @tphotos.concat(theme.tphotos)
    end
  end

  def build_photos
    params.fetch(:vphotos, {}).each do |photo|
      @vacation.vphotos.build(image: photo)
    end
  end

  def vacation_params
    # here we forgot to add theme_id, which also needs to be added in the create_form
    params.require(:vacation).permit(:address, :title, :country, :region, :price,
      :description, :show, :review, :booking, :more_info, vphotos_attributes: [ :image ], theme_ids: [])
  end
end
