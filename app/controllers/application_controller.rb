class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # before_filter should be before_action from rails 5.1 onwards
  before_action :theme

  def theme
    @themes = Theme.all
  end

end
