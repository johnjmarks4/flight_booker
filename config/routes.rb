Rails.application.routes.draw do
  
  resources :users

  get 'login' => 'users#new'
  
  get 'bookings/new'

  root 'flights#index'

  get 'flights/index' => 'flights#index'

  post 'flights/index' => 'flights#index'

  get 'bookings/new' => 'bookings#new'

  post 'bookings/new' => 'bookings#new'

  get 'bookings/create' => 'bookings#create'

  post 'bookings/create' => 'bookings#create'

  get 'bookings/show' => 'bookings#show'
end