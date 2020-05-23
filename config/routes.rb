Rails.application.routes.draw do


  get "photo/janken" => "photo#janken"
  get "photo/top" => "photo#top"
  get 'photo/content' => "photo#content"

  post "logout" => "users#logout"
  post "login" => "users#login"
  get "login" => "users#login_form"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get 'users/index' => "users#index"
  get "users/:id" => "users#show"

  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "question/answer" => "question#answer"
  get 'question/new' => "question#new"
  post "question/create" => "question#create"

  get "/" => "home#top"
  get "profile" => "home#profile"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
