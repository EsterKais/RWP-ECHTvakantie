class PagesController < ApplicationController
  def over_ons
	@page_title = 'Meer over ons'
    	@page_description = 'Ik besteed graag veel tijd om het ultieme vakantieverblijf te vinden en kan zo dagen bezig zijn. Om het zoeken wat makkelijker te maken, leek het mij een goed idee om de adressen in te delen aan de hand van thema’s.'
  end

  def contact
	@page_title = 'Neem contact op'
    	@page_description = 'Wil je wat meer weten over de locatie of heb je een andere vraag? Neem gerust contact op via echtvakantie@gmail.com'
  end

  def robots
    respond_to :text
    expires_in 6.hours, public: true
  end

  def sitemap
    respond_to :xml
  end
end
