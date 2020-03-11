Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :greetings, only: [:index]
    resources :newsfeeds, only: [:index, :show] do
      resources :comments
    end
    resources :comments
  end
end
