Rails.application.routes.draw do

  root 'landing_pages#index'

  localized do
    devise_for :users
    resources :projects, param: :slug do
      resources :cover, only: [:create, :destroy]
      resources :images, only: [:create, :destroy]
    end
    resources :categories, only: [:index, :show], param: :slug
    resources :donations, only: [:update]
    resources :users, only: [:show] do
      resources :bank_details, only: [:show]
    end
    resources :admin_explanations, only: [:new, :create]
    resources :bank_details, only: [:new, :create, :edit, :update]
    resources :static_pages, only: [:index]
    resources :admin, only: [:index]
    namespace :admin do
      resources :exports, only: [:new]
      resources :transfers, only: [:new, :update]
      resources :projects
      resources :donations, only: [:index]
      resources :users, only: [:index, :edit, :update, :destroy]
    end
    resources :projects do
      resources :charges, only: [:index, :new, :create, :delete]
    end
  end
end
