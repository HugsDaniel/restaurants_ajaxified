Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :show ] do
    resources :reviews, only: :create
  end

  resources :reviews, only: :destroy

  # namespace :owner do
  #   resources :reviews, only: :create
  # end
  # => POST "/owner/reviews"
end

# POST "/restaurants/:restaurant_id/reviews"

