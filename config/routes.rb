Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :flats, only: [:index, :show, :create, :update, :destroy]
=======
  resources :flats, only: [:index, :show, :create :update, :destroy]
>>>>>>> master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
