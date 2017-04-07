Rails.application.routes.draw do
  resources :events

  resources :questions

  resources :topics
  resources :weeks
  
  resources :weeks do
    member do
      resources :topics
    end
  end
  devise_for :users
  root 'weeks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
