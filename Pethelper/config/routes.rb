Rails.application.routes.draw do
  

get 'funcionarios/new'
get  '/signup'  => 'funcionarios#new'
post '/signup'  => 'funcionarios#create'

root 'static_pages#home'
get 'roots' => 'static_pages#home'

resources :funcionarios
end
