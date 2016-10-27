Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vacations, :path => 'vakantie', param: :title

  resources :themes, :path => 'thema', param: :name

  ######################################################################################################################
  # WOUTER special route (fix this later)
  get '/thema/:name/*filters' => "themes#show"

  ######################################################################################################################
  # users/sign_in/ is /admin
  devise_scope :user do get "/admin" => "devise/sessions#new" end

  ######################################################################################################################
  # actually we wanna have actions defined for all possible filters, like so in our views:  "/#{key}/#{value}/"
  # our filters
  get '/thema/:name/land/frankrijk' => "themes#show", as: :filter_frankrijk
  get '/thema/:name/land/spanje' => "themes#show", as: :filter_spanje
  get '/thema/:name/land/nederland' => "themes#show", as: :filter_nederland

  get '/thema/:name/regio/randstad' => "themes#show", as: :filter_randstad
  get '/thema/:name/regio/ardennen' => "themes#show", as: :filter_ardennen
  get '/thema/:name/regio/waddeneilanden' => "themes#show", as: :filter_waddeneilanden

  get '/thema/:name/prijs/echt-goedkoop' => "themes#show", as: :filter_goedkoop
  get '/thema/:name/prijs/echt-normaal' => "themes#show", as: :filter_normaal
  get '/thema/:name/prijs/echt-duur' => "themes#show", as: :filter_duur

  resources :tphotos
  resources :vphotos

  root 'themes#index'

end

