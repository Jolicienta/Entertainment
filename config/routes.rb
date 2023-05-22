Rails.application.routes.draw do
  get 'home/index', to: redirect('http://localhost:3000'), as: 'home'
  root 'home#index'

  #Rutas GET para el modelo Movie para las vistas index, create y new
  get '/movie' => 'movie#index', as: 'movies'
  get 'movie/new'

  #Rutas Post para Movies
  post 'movie/create'

  #Rutas para el modelo Documentary_film para las vistas index, create y new
  get 'documentary_film/index'
  get 'documentary_film/create'
  get 'documentary_film/new'
  #Rutas para el modelo Serie para las vistas index, create y new
  get 'serie/index'
  get 'serie/create'
  get 'serie/new'
  
  # get '/mi_ruta', to: redirect('http://localhost:3000')
end
