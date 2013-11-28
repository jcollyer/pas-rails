PasRails::Application.routes.draw do

  root :to => 'static#home'

  resources :media

  resources :newsletters

  resources :posts do
    resources :comments, :only => [:create]
  end

  get "static/about", as: "about"
  get "static/contact", as: "contact"
  get "static/programs", as: "programs"
  get "static/donate", as: "donate"
end

