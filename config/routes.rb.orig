Rails.application.routes.draw do

  root 'themes#index'

  resources :tphotos
  resources :vphotos

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

<<<<<<< HEAD
   resources :vacations, param: :title

=======
>>>>>>> master


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
<<<<<<< HEAD

  resources :tphotos
  resources :vphotos

  root 'themes#index'


  get 'vacations/new' => 'vacations#new', as: :new_vacation             # what does ":as" mean ????
  # post 'vacations' => 'vacations#create'
  #
  # get 'vacations/:name' => 'vacations#show', as: :vacation              # what does ":as" mean ????
  # get 'vacations/:name/edit' => 'vacations#edit', as: :edit_vacation    # what does ":as" mean ????
  #
  # patch 'vacations/:name' => 'vacations#update'
  # delete 'vacations/:name' => 'vacations#destroy'
  #
  #
  # get 'themes/new' => 'themes#new', as: :new_theme            # what does ":as" mean ????
  # post 'themes' => 'themes#create'
  #
  # get 'themes/:name' => 'themes#show', as: :theme             # what does ":as" mean ????
  # get 'themes/:name/edit' => 'themes#edit', as: :edit_theme   # what does ":as" mean ????
  #
  # patch 'themes/:name' => 'themes#update'
  # delete 'themes/:name' => 'themes#destroy'




=======
  ######################################################################################################################
>>>>>>> master
end
