Rails.application.routes.draw do
  resources :products
  
  get 'simple_pages/about'

  get 'simple_pages/contact'

  get 'simple_pages/index'

  get 'simple_pages/landing_page'

  get '/products/:id', to: 'products#show'
  
  get '/products', to: 'products#index'

  root 'simple_pages#landing_page'

  post 'simple_pages/thank_you'

  #root 'products#index'#

  resources :orders, only: [:index, :show, :create, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
