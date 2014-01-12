PasRails::Application.routes.draw do

  root :to => 'static#home'

  resources :programs
  resources :newsletters
  resources :media

  resources :posts do
    resources :comments, :only => [:create]
  end

  get "static/about", as: "about"
  get "static/contact", as: "contact"
  get "static/donate", as: "donate"
end

