Rails.application.routes.draw do

  get '/robots' => 'pages#robots', constraints: { format: :txt }
  get '/sitemap' => 'pages#sitemap', constraints: { format: :xml }

  get 'over-ons' => "pages#over_ons", as: 'over_ons'

  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'

  # except sign_up
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vacations, :path => 'vakantie', param: :title

  resources :themes, :path => 'thema', param: :name

  # this helps us creating paths for all possible region and country filters (check helper_methods)
  get '/thema/:name/*filters' => "themes#show"

  ######################################################################################################################
  # users/sign_in/ is /admin
  devise_scope :user do get "/admin" => "devise/sessions#new" end
  devise_scope :user do get "/admin/loguit" => "devise/sessions#destroy" end

  get '/thema/:name/prijs/E' => "themes#show", as: :filter_voordelig
  get '/thema/:name/prijs/EE' => "themes#show", as: :filter_gemiddeld
  get '/thema/:name/prijs/EEE' => "themes#show", as: :filter_prijzig

  resources :tphotos
  resources :vphoto

  root 'themes#index'

end
