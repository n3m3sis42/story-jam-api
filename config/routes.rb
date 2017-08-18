Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cards, only: [:index]
      resources :jams, only: [:create, :index, :update]
      resources :spreads, only: [:create, :index, :update]
      resources :stories, only: [:create, :index, :update]
    end
  end

end
