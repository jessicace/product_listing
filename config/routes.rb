Rails.application.routes.draw do

  root 'home#index'

  get 'products' => 'products#index'
  get 'products/:id' => 'products#show', as: 'product'
  
end
