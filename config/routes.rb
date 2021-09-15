Rails.application.routes.draw do
  devise_for :users
  resources :notes, only: [:new, :create]
  root to: "notes#index"
  get 'tags/:tag', to: 'notes#index', as: :tag
  get 'instructors/:instructor', to: 'notes#index', as: :instructor
  get 'note_titles/:note_title', to: 'notes#index', as: :note_title
end
