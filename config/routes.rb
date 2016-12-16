Rails.application.routes.draw do

  root 'vendors#index'

  resources :vendors do
    collection do
      get :search_by_tire
      get :search_by_car
      get :order_price
      get :order_rate
      get :admin
    end
  end

  get 'pages/about'
  get 'pages/authenticate'


end
