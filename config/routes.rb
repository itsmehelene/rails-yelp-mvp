Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:new, :create]
  end

  # A visitor can see the list of all restaurants.
  # get 'restaurants', to: 'restaurants#index'

  # # She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # get 'restaurants/new', to: 'restaurants#new'
  # post 'restaurants', to: 'restaurants#create'

  # # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # get 'restaurants/38', to: ''
  # get 'restaurants/38/reviews/new', to: ''

  # # She/He can add a new review to a restaurant
  # post 'restaurants/38/reviews', to: ''
end
