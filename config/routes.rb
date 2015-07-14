Rails.application.routes.draw do
  devise_for :users
  resources 'duels' do
    resources 'comments'
  end
  resources 'users', only: [:index, :show]
  root "duels#index"
end
