Rails.application.routes.draw do
  get 'evaluations/new'
  get 'evaluations/create'
  root to: 'pages#home'

  resources :baskets do
    collection do
      get "top" => "baskets#top"
    end
    member do
      get "team_mate" => "baskets#team_mate"
    end
    resources :about, only: [:index]
    resources :contact, only: [:index]
    resources :evaluations, only: [:new, :create]
  end

  namespace :admin do
    resources :baskets, only: [:index]
  end

  get "admin/baskets" => "admin/baskets"

  # get 'about', to: 'pages#about'
  # get 'contact', to: 'pages#contact'
  # get 'baskets', to: 'baskets#index'
  # get 'baskets/:id', to: 'baskets#show', as: :basket
  # post 'baskets', to: 'baskets#create'

  # verb path, to: 'controller#action'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
