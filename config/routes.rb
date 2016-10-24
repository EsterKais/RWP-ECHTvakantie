Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :vacations


  get 'themes/new' => 'themes#new', as: :new_theme
  get 'themes/:name/edit' => 'themes#edit', as: :edit_theme
  get 'themes/:name' => 'themes#show', as: :theme
  post 'themes' => 'themes#create'
  patch 'themes/:name' => 'themes#update'
  delete 'themes/:name' => 'themes#destroy'

  root 'themes#index'


end
