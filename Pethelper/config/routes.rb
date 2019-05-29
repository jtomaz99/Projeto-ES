Rails.application.routes.draw do
  

  get 'casa_abrigos/new'

  get 'animals/new'

  get 'sessions/new'

get 'funcionarios/new'
get  '/signup'  => 'funcionarios#new'
post '/signup'  => 'funcionarios#create'

get '/newcasa' => 'casa_abrigos#new'
post 'newcasa' => 'casa_abrigos#create'


get 'newmanager' => 'funcionarios#newmanager'


get 'newanimal' => 'animals#new' 
post 'newanimal' => 'animals#create'

get    '/login',   to: 'sessions#new'
post   '/login',   to: 'sessions#create'
delete '/logout',  to: 'sessions#destroy'




root 'static_pages#home'
get 'roots' => 'static_pages#home'

resources :funcionarios
resources :animals
resources :casa_abrigos
end
