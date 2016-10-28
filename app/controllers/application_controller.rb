class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_filter should be before_action from rails 5.1 onwards
  before_action :theme

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
