Rails.application.routes.draw do
  resources :events, only: [:index, :show]
  resources :points, only: [:index]
end
