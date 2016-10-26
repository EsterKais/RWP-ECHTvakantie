Rails.application.routes.draw do

  root 'themes#index'

  resources :tphotos
  resources :vphotos

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  ######################################################################################################################
  # WOUTER special route (fix this later)
  get '/thema/:name/*filters' => "themes#show"

  ######################################################################################################################



  ######################################################################################################################
  # normal routes for vacations

  get 'vakanties/new' => 'vacations#new', as: :new_vacation
  post 'vakanties' => 'vacations#create'

  get 'vakanties/:title' => 'vacations#show', as: :vacation
  get 'vakanties/:title/edit' => 'vacations#edit', as: :edit_vacation

  put 'vakanties/:title' => 'vacations#update'
  patch 'vakanties/:title' => 'vacations#update'
  delete 'vakanties/:title' => 'vacations#destroy'
  ######################################################################################################################



  ######################################################################################################################
  # normal routes for themes

  get 'thema/new' => 'themes#new', as: :new_theme
  post 'themas' => 'themes#create'

  get 'themas/:name' => 'themes#show', as: :theme
  get 'themas/:name/edit' => 'themes#edit', as: :edit_theme

  put 'themas/:name' => 'themes#update'
  patch 'themas/:name' => 'themes#update'
  delete 'themas/:name' => 'themes#destroy'
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
