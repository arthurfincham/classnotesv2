Rails.application.routes.draw do
  devise_for :users
  resources :notes, only: [:new, :create, :edit, :update, :destroy]
  root to: "notes#index"
  get 'tags/:tag', to: 'notes#index', as: :tag
end
