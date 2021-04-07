Rails.application.routes.draw do
  devise_for :users
  root to: 'quizzs#index'
  resources :quizzs, only: [:index, :show] do
    resources :questions, only: [:show]
  end
  resources :attempt_answers, only: [:create]
  namespace :api do
    namespace :v1 do
      resources :attempt_answers, only: [:create]
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

