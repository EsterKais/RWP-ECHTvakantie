class PagesController < ApplicationController
  def over_ons
  end

  def contact
  end

  def robots
    respond_to :text
    expires_in 6.hours, public: true
  end

  def sitemap
    respond_to :xml
  end
end
