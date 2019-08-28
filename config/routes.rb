Rails.application.routes.draw do

  root 'home#top'
  get 'home/about' => 'home#about'

  patch 'users/:id' => 'users#update', as: 'update_user'

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  

  patch "books/:id" => "books#update", as: "update_book"




resources :books, only: [:new, :create, :index, :show, :edit, :destroy] 

resources :users, only: [:show, :edit, :new, :create, :index]

resources :homes, only: [:top, :about]



  	# devise_for :social_accounts, controllers: {
   #   omniauth_callbacks: "omniauth_callbacks"
   # }

   # # ログアウト
   # devise_scope :social_account do
   #   get 'sign_out', to: "logouts#destroy"

   # root "home#top"
   # get  "home/top"
   # resources :users
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

