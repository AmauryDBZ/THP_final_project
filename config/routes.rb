Rails.application.routes.draw do
  
  root 'projects#index'

  localized do
    devise_for :users
    resources :projects, only: [:index, :show, :new, :create, :edit], param: :slug
    resources :categories, only: [:index, :show], param: :slug
    resources :users, only: [:show]
    resources :static_pages, only: [:index]
  end
  


end
