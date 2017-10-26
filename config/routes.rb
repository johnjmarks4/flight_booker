Rails.application.routes.draw do
  
  root 'flights#index'

  get 'flights/index' => 'flights#index'

end