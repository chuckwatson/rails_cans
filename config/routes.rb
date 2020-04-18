Rails.application.routes.draw do
  get 'hops/new'
  get 'hops/create'
  get 'breweries/new'
  get 'breweries/create'
  get 'breweries/update'
  get 'breweries/edit'
  get 'breweries/destroy'
  get 'breweries/index'
  get 'breweries/show'
  get 'cans/new'
  get 'cans/create'
  get 'cans/update'
  get 'cans/edit'
  get 'cans/destroy'
  get 'cans/index'
  get 'cans/show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
