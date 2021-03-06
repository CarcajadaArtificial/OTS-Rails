Rails.application.routes.draw do

  resources :filtros
  resources :representantes
  resources :alerta
  resources :recibos
  resources :vehiculos
  resources :clientes do
    collection do
      get :filtered, as: :filtro
    end
  end

  root to: 'layouts#index'
  get 'clientes'          => 'clientes#index',    as: :reporte_cliente
  get 'clientes/new'      => 'clientes#new',      as: :nuevo_cliente
  get 'vehiculos'         => 'vehiculos#index',   as: :reporte_vehiculo
  get 'vehiculos/new'     => 'vehiculos#new',     as: :nuevo_vehiculo
  get 'recibos'           => 'recibos#index',     as: :reporte_recibo
  get 'recibos/new'       => 'recibos#new',       as: :nuevo_recibo
  get 'alerta'            => 'alerta#index',      as: :reporte_alerta
  get 'alerta/new'        => 'alerta#new',        as: :nuevo_alerta
  get 'solicitud'         => 'layouts#solicitud', as: :solicitud
  get 'filtros/new'       => 'filtros#new',       as: :nuevo_filtro

  Rails.application.routes.draw do
    resources :filtros
    resources :alerta
    resources :recibos
    devise_for :users, :controllers =>  { :registrations => "my_devise/registrations" }
  end

end
