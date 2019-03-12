Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'home#index'

  resources :groups do
  	resources :products
  end

  resources :all_products
  resources :instructions
  resources :reports 

  namespace :api, defaults: { format: :json } do
  	resources :groups do
      resources :products
    end
    resources :all_products
    resources :instructions
    resources :reports
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
