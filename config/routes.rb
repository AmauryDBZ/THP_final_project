Rails.application.routes.draw do

  root 'projects#index'

  localized do
    devise_for :users
    resources :projects, only: [:index, :show, :new, :create, :edit], param: :slug do
      resources :cover, only: [:create, :destroy]
    end
    resources :categories, only: [:index, :show], param: :slug
    resources :users, only: [:show]
    resources :static_pages, only: [:index]
    resources :admin, only: [:index]
    namespace :admin do
      resources :projects
    end
    resources :projects do
        resources :charges, only: [:index, :new, :create]
    end
  end
end
