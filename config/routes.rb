Rails.application.routes.draw do

  resources :vehiculos
  resources :clientes
  root to: 'layouts#index'
  get 'clientes'      => 'clientes#index',  as: :reporte_cliente
  get 'clientes/new'  => 'clientes#new',    as: :nuevo_cliente
  get 'vehiculos'     => 'vehiculos#index', as: :reporte_vehiculo
  get 'vehiculos/new' => 'vehiculos#new',   as: :nuevo_vehiculo

  Rails.application.routes.draw do
    # devise_for :users, controllers: {
    #     registration: 'users/registration'
    # }
    devise_for :users do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
  end

end
