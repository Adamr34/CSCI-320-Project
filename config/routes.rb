Rails.application.routes.draw do
  devise_for :users

  #cart logic 
  get '/cart' => 'cart#index'
  get '/cart/clear' => 'cart#clearCart'
  get '/cart/:id'	=> 'cart#add'


  #navigation routes
  resources :products
  root 'page#home'

  get 'page/about'

  get 'page/faqs'

  get 'page/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
