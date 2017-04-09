Rails.application.routes.draw do

  resources :weeks do
    member do
      resources :topics do
        member do
          resources :events
          resources :questions do
            member do
              get 'upvote', to: 'questions#upvote'
              get 'downvote', to: 'questions#downvote'
            end
          end
        end
      end
    end
  end
  devise_for :users
  root 'weeks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# Need to fix routes for events to include the upvote feature! 
