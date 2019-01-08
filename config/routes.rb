Rails.application.routes.draw do
  get 'home/contacts'
  get 'home/index'
  resources :terms
  # resources :about
  get 'about', action: :index, controller: 'about'
  resources :articles
  resource :contacts, only: [:new, :create], path_names: { :new => ''}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
