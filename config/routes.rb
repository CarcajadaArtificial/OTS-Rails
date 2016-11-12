Rails.application.routes.draw do

  get 'cliente/new'

  root to: 'layouts#index'
  get '/camion'         => 'static_pages#camion',         as: :camion
  get '/recibo'         => 'static_pages#recibo',         as: :recibo
  get '/representante'  => 'static_pages#representante',  as: :representante
  get '/solicitud'      => 'static_pages#solicitud',      as: :solicitud

  get '/cliente/new' => 'cliente#new', as: :new_cliente
  post '/cliente/new' => 'cliente#new', as: :post_cliente
  get '/cliente/reporte' => 'cliente#reporte', as: :reporte_cliente

  Rails.application.routes.draw do
  get 'cliente/new'

    # devise_for :users, controllers: {
    #     registration: 'users/registration'
    # }
    devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  end

end
