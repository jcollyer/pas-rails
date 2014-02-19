PasRails::Application.routes.draw do

  root :to => 'static#home'

  resources :programs
  resources :newsletters
  resources :media
  resources :gifts
  resources :photos

  resources :posts do
    resources :comments
  end

  get "static/about", as: "about"
  get "static/contact", as: "contact"

  ### All for authentication ###
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  resources :users
  resources :sessions

end

