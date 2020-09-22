Rails.application.routes.draw do
  root 'home#index'
  
  get 'home/index'
  #get 'home/index' => 'home#index'
  get 'home/new'
  #get 'home/new' => 'home#new'
  #get 'home/create'
  #get 'home/create' => 'home#create'
  post 'home/create'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
