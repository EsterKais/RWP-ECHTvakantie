Rails.application.routes.draw do

  get '/robots' => 'pages#robots', constraints: { format: :txt }
  get '/sitemap' => 'pages#sitemap', constraints: { format: :xml }

  get 'over-ons' => "pages#over_ons", as: 'over_ons'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  # except sign_up
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vacations, :path => 'vakantie'

  resources :themes, :path => 'thema'

  # this helps us creating paths for all possible region and country filters (check helper_methods)
  get '/thema/:id/*filters' => "themes#show"

  ######################################################################################################################
  # users/sign_in/ is /admin
  devise_scope :user do get "/admin" => "devise/sessions#new" end
  devise_scope :user do get "/admin/loguit" => "devise/sessions#destroy" end

  get '/thema/:id/prijsklasse/laag' => "themes#show", as: :filter_voordelig
  get '/thema/:id/prijsklasse/midden' => "themes#show", as: :filter_gemiddeld
  get '/thema/:id/prijsklasse/hoog' => "themes#show", as: :filter_prijzig

  resources :tphotos
  resources :vphotos

  root 'themes#index'

end
