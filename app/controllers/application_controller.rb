class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :theme

  def theme
    @themes = Theme.all
  end
end
