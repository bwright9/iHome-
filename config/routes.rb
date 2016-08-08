Rails.application.routes.draw do
  resources :posts
  root 'home#index'
  devise_for :users, controllers: {
   registrations: 'users/registrations'}
  resources :rooms 

end
