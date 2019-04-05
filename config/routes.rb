Rails.application.routes.draw do
  root to: 'pages#home'

  resources :baskets do
    # resources :about, only: [:index]
    # resources :contact, only: [:index]
  end

  # get 'about', to: 'pages#about'
  # get 'contact', to: 'pages#contact'
  # get 'baskets', to: 'baskets#index'
  # get 'baskets/:id', to: 'baskets#show', as: :basket
  # post 'baskets', to: 'baskets#create'


  # verb path, to: 'controller#action'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
