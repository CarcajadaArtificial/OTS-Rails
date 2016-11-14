Rails.application.routes.draw do

  resources :vehiculos
  resources :clientes
  root to: 'layouts#index'

  Rails.application.routes.draw do
    # devise_for :users, controllers: {
    #     registration: 'users/registration'
    # }
    devise_for :users do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
  end

end
