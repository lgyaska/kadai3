Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :users,only:[:show,:edit,:update]
 root 'layouts#top'
 get 'users' => 'users#index'
 get 'home/about' => 'layouts#about'
delete '/books' => 'books#destroy'
end
