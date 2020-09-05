Rails.application.routes.draw do

  devise_for :users
  root 'projects#index'

  resources :projects, only: [:index, :show, :new], param: :slug, path: "projets"
  resources :categories, only: [:index, :show], param: :slug, path: "categories"
end
