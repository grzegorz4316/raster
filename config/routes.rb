Rails.application.routes.draw do
  resources :plastics
  root 'home#index'
  get 'home/orders'
  get 'home/plastic'
  get 'home/test'
  
end
