class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_filter should be before_action from rails 5.1 onwards
  before_action :theme, :seo

  def seo
    @site_title       = 'ECHTvakantie'
    @page_title       = 'Bijzondere vakantieplekken in Europa'
    @page_description = 'Ontdek de meest bijzondere vakantieplekken in Europa, voor een weekendje weg of vakantie. Persoonlijk vind ik de plek waar je overnacht net zo belangrijk als de bestemming. Altijd een kleinschalig, bijzonder verblijf met persoonlijke touch.'
    @page_keywords    = 'Bijzondere, vakantie, plekken, Europa, weekendje, weg, vakantie, overnachting, kleinschalig, persoonlijk, Benelux'
  end

  def theme
    @themes = Theme.all
  end

  def sort_vacations
    # params[:sort] || "title"
    %w[title country region price created_at].include?(params[:sort]) ? params[:sort] : "title"
  end


  def sort_direction
    # params[:direction] || "asc"
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
  end


end
