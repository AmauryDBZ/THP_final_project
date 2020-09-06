Rails.application.routes.draw do
  
  root 'projects#index'

  localized do
    devise_for :users
    resources :projects, only: [:index, :show, :new, :create], param: :slug
    resources :categories, only: [:index, :show], param: :slug
  end
  


end
