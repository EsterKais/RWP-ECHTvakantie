Rails.application.routes.draw do

  get 'pages/Over_ons'
  get 'pages/Contact'

  # except sign_up
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vacations, :path => 'vakantie', param: :title

  resources :themes, :path => 'thema', param: :name

  ######################################################################################################################
  # WOUTER special route
  # this helps us creating paths for all possible region and country filters (check helper_methods)
  get '/thema/:name/*filters' => "themes#show"

  ######################################################################################################################
  # users/sign_in/ is /admin
  devise_scope :user do get "/admin" => "devise/sessions#new" end

  ######################################################################################################################
  # actually we wanna have actions defined for all possible filters, like so in our views:  "/#{key}/#{value}/"
  # our filters
  #
  # get '/thema/:name/land/frankrijk' => "themes#show", as: :filter_frankrijk
  # get '/thema/:name/land/spanje' => "themes#show", as: :filter_spanje
  # get '/thema/:name/land/nederland' => "themes#show", as: :filter_nederland
  # get '/thema/:name/land/belgie' => "themes#show", as: :filter_belgie
  # get '/thema/:name/land/zweden' => "themes#show", as: :filter_zweden
  # get '/thema/:name/land/duitsland' => "themes#show", as: :filter_duitsland
  #
  # get '/thema/:name/regio/randstad' => "themes#show", as: :filter_randstad
  # get '/thema/:name/regio/ardennen' => "themes#show", as: :filter_ardennen
  # get '/thema/:name/regio/waddeneilanden' => "themes#show", as: :filter_waddeneilanden

  get '/thema/:name/prijs/voordelig' => "themes#show", as: :filter_voordelig
  get '/thema/:name/prijs/gemiddeld' => "themes#show", as: :filter_gemiddeld
  get '/thema/:name/prijs/prijzig' => "themes#show", as: :filter_prijzig

  resources :tphotos
  resources :vphotos

  root 'themes#index'

end
