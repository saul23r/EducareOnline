Rails.application.routes.draw do
  get 'detalle_pedido/index'

  resources :pedidos
  get 'about/us'

  get 'admin/welcome'

  get 'admin/dida'

  get 'admin/libro'

  get 'admin/pro'

  get 'admin/venta'

  resources :entradas
  resources :line_items
  resources :carts
  get 'tienda/index'

  resources :products
  root 'page#welcome', as: 'page_welcome', via: :all
get 'page/welcome'
 get 'page/show'
 get 'page/libro'
 get 'page/dida'


  devise_for :users


 get '/cart' =>'cart#index'
  get '/cart/clear'=>'cart#clearCart'
  get '/cart/:id'=>'cart#add'

  #root 'sessions#show'
   #root 'static#login'
  #get '/main' => 'static#main'
  #get '/user' => 'static#user'

  #get '/signup' => 'users#show'
  #post '/signup' => 'users#create'

  #get '/login' => 'sessions#show'
  #post '/login' => 'sessions#create'
  #delete '/logout' => 'sessions#destroy'

  resources :users
  resources :marcas
  resources :proveedors
  resources :generos
  resources :editorials
  resources :page


end
