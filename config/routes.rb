Rails.application.routes.draw do

  resources :representantes
  resources :recibos
  resources :vehiculos
  resources :clientes
  root to: 'layouts#index'
  get 'clientes'      => 'clientes#index',  as: :reporte_cliente
  get 'clientes/new'  => 'clientes#new',    as: :nuevo_cliente
  get 'vehiculos'     => 'vehiculos#index', as: :reporte_vehiculo
  get 'vehiculos/new' => 'vehiculos#new',   as: :nuevo_vehiculo
  get 'recibos'       => 'recibos#index',   as: :reporte_recibo
  get 'recibos/new'   => 'recibos#new',     as: :nuevo_recibo
  get 'solicitud'     => 'layouts#solicitud', as: :solicitud

  Rails.application.routes.draw do
  resources :recibos
  devise_for :users, :controllers =>  { :registrations => "my_devise/registrations" }
  end

end
