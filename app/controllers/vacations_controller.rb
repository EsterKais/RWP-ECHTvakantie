class VacationsController < ApplicationController
  before_action :set_vacation, only: [:edit, :update, :show, :destroy]
  before_action :set_themes, only: [:edit, :update, :show, :destroy]

  def index
    @vacations = Vacation.all
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
    @vphotos = @vacation.vphotos
  end

  def destroy
    @vacation.destroy
    redirect_to root_path
  end

  def edit
    @vphotos = @vacation.vphotos
  end

  def update
    build_photos
    if @vacation.update(vacation_params)
      redirect_to edit_vacation_path(@vacation), notice: "Update succesvol"
    else
      render :edit
    end
  end

  private

  def set_vacation
    @vacation = Vacation.find_by_title(params[:title])
  end


    def set_themes
      @themes = @vacation.themes
    end

  def build_photos
    params.require(:photos).each do |photo|
      @vacation.vphotos.build(image: photo)
    end
  end

  def vacation_params
    params.require(:vacation).permit(:title, :country, :region, :price,
      :description, :show, vphotos_attributes: [ :image ])
  end
end
