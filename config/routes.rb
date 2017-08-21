Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cards, only: [:index]
      resources :jams, only: [:create, :index, :update, :show]
      resources :spreads, only: [:create, :index, :update, :show]
      resources :stories, only: [:create, :index, :update, :show]
    end
  end

end
