Rails.application.routes.draw do
  root 'home#index'
  
  get 'home/index'
  #get 'home/index' => 'home#index'
  get 'home/new'
  #get 'home/new' => 'home#new'
  #get 'home/create'
  #get 'home/create' => 'home#create'
  post 'home/create'
  
  get 'home/destroy/:post_id' => 'home#destroy'
  # 이름이 같지 않으니 더이상 축약해서 나타낼 수 없음.
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
