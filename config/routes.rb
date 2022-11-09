Rails.application.routes.draw do
  root 'home#index'

  get 'climate/index'
  get 'climate/chnage', to: 'climate#chnage'
  #root 'weather#index'
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
