Rails.application.routes.draw do
  

  
  
  resources :weeks do
    member do
      resources :topics do
        member do
          resources :questions
          resources :events
        end
      end
    end
  end
  devise_for :users
  root 'weeks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
