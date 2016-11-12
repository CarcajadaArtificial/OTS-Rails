Rails.application.routes.draw do

  resources :clientes
  #root to: 'layouts#index'
  get '/clientes/index' => 'clientes#index', as: :clientes_view

  Rails.application.routes.draw do
    # devise_for :users, controllers: {
    #     registration: 'users/registration'
    # }
    devise_for :users do
      get '/users/sign_out' => 'devise/sessions#destroy'
    end
  end

end
