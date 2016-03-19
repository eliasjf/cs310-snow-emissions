Rails.application.routes.draw do
  resources :main

  root 'main#index'

  get '/admin' => 'admin#admin'
  post '/admin' => 'admin#seedDB'

  match '/user_settings', to: 'user_settings#user_settings', via: [:get]
  match '/user_settings', to: 'user_settings#update', via: [:post]

  match 'auth/:provider/callback', to: 'session#create', via: [:get, :post] #this isn't called for some reason
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'session#destroy', as: 'signout', via: [:get, :post]
end
