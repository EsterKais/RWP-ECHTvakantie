Rails.application.routes.draw do

  # this is our one and only index action, for now
  root 'themes#index'


  resources :tphotos
  resources :vphotos

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  ######################################################################################################################
  # WOUTER special route (fix this later)
  get '/thema/:name/*filters' => "themes#show"

  ######################################################################################################################

  # users/sign_in/ is /admin
  devise_scope :user do get "/admin" => "devise/sessions#new" end

  ######################################################################################################################
  # normal routes for vacations

  get 'vakantie/new' => 'vacations#new', as: :new_vacation
  post 'vakantie' => 'vacations#create'

  get 'vakanties/' => 'vacations#index', as: :vacations
  get 'vakantie/:title' => 'vacations#show', as: :vacation
  get 'vakantie/:title/edit' => 'vacations#edit', as: :edit_vacation

  put 'vakantie/:title' => 'vacations#update'
  patch 'vakantie/:title' => 'vacations#update'
  delete 'vakantie/:title' => 'vacations#destroy'
  ######################################################################################################################



  ######################################################################################################################
  # normal routes for themes

  get 'themes' => 'themes#index'
  get 'thema/new' => 'themes#new', as: :new_theme
  post 'thema' => 'themes#create'

  get 'thema/:name' => 'themes#show', as: :theme
  get 'thema/:name/edit' => 'themes#edit', as: :edit_theme

  put 'thema/:name' => 'themes#update'
  patch 'thema/:name' => 'themes#update'
  delete 'thema/:name' => 'themes#destroy'
  ######################################################################################################################



  ######################################################################################################################
  # our filters
  # actually we wanna have actions defined for all possible filters, like so in our views:  "/#{key}/#{value}/"
  # for the time being we use custom prefixes, which is easier and powerful

  get '/thema/:name/land/frankrijk' => "themes#show", as: :filter_frankrijk
  get '/thema/:name/land/spanje' => "themes#show", as: :filter_spanje
  get '/thema/:name/land/nederland' => "themes#show", as: :filter_nederland

  get '/thema/:name/regio/randstad' => "themes#show", as: :filter_randstad
  get '/thema/:name/regio/ardennen' => "themes#show", as: :filter_ardennen
  get '/thema/:name/regio/waddeneilanden' => "themes#show", as: :filter_waddeneilanden

  get '/thema/:name/prijs/echt-goedkoop' => "themes#show", as: :filter_goedkoop
  get '/thema/:name/prijs/echt-normaal' => "themes#show", as: :filter_normaal
  get '/thema/:name/prijs/echt-duur' => "themes#show", as: :filter_duur
  ######################################################################################################################
end
