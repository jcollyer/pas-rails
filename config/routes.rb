PasRails::Application.routes.draw do

  root :to => 'home#index'

  resources :media

  resources :newsletters

  resources :posts do
    resources :comments, :only => [:create]
  end
end
