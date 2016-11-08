Rails.application.routes.draw do

  root to: 'layouts#index'
  get '/camion'         => 'static_pages#camion',         as: :camion
  get '/cliente'        => 'static_pages#cliente',        as: :cliente
  get '/recibo'         => 'static_pages#recibo',         as: :recibo
  get '/representante'  => 'static_pages#representante',  as: :representante
  get '/solicitud'      => 'static_pages#solicitud',      as: :solicitud

  Rails.application.routes.draw do
    # devise_for :users, controllers: {
    #     registration: 'users/registration'
    # }
    devise_for :users do
  get '/users/sign_out' => 'devise/sessions#destroy'
end
  end

end
