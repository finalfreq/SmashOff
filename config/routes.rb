Rails.application.routes.draw do
  devise_for :users
  resources 'duels'
  resources 'users', only: [:index, :show]
  root "duels#index"
end
