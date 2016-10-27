Rails.application.routes.draw do

  # except sign_up
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
  get '/thema/:name/land/belgie' => "themes#show", as: :filter_belgie
  get '/thema/:name/land/zweden' => "themes#show", as: :filter_zweden
  get '/thema/:name/land/duitsland' => "themes#show", as: :filter_duitsland
  get '/thema/:name/land/oostenrijk' => "themes#show", as: :filter_oostenrijk

  get '/thema/:name/regio/midden-nederland' => "themes#show", as: :filter_middennederland
  get '/thema/:name/regio/zuid-holland' => "themes#show", as: :filter_zuidnederland
  get '/thema/:name/regio/noord-holland' => "themes#show", as: :filter_noordholland
  get '/thema/:name/regio/zuid-belgie' => "themes#show", as: :filter_zuidbelgie
  get '/thema/:name/regio/noord-zweden' => "themes#show", as: :filter_noordzweden
  get '/thema/:name/regio/noord-duitsland' => "themes#show", as: :filter_noordduitsland
  get '/thema/:name/regio/zuid-frankrijk' => "themes#show", as: :filter_zuidfrankrijk
  get '/thema/:name/regio/wenen' => "themes#show", as: :filter_wenen

  get '/thema/:name/prijs/voordelig' => "themes#show", as: :filter_goedkoop
  get '/thema/:name/prijs/gemiddeld' => "themes#show", as: :filter_normaal
  get '/thema/:name/prijs/prijzig' => "themes#show", as: :filter_duur

  resources :tphotos
  resources :vphotos

  root 'themes#index'

end
