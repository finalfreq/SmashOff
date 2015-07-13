Rails.application.routes.draw do
  devise_for :users
  resources 'duels'
  root "duels#index"
end
