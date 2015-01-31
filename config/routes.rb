Rails.application.routes.draw do
  root "games#new"
  resources :games, only: [:new, :create,  :destroy] do
    resources :crimes, only: [:new, :create, :edit, :update]
  end
end
