Rails.application.routes.draw do
  
  get 'user/new'

  get 'static_pages/home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'


  resources :users

  resources :articles do
  	resources :comments
  end

  root 'welcome#index'
end
