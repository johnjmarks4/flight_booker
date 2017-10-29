Rails.application.routes.draw do
  
  get 'bookings/new'

  root 'flights#index'

  get 'flights/index' => 'flights#index'

  post 'flights/index' => 'flights#index'

end