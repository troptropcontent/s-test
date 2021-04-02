Rails.application.routes.draw do
  devise_for :users
  root to: 'quizzs#index'
  resources :quizzs, only: [:index, :show]
  resources :atempts, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
