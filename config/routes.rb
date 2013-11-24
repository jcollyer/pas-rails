PasRails::Application.routes.draw do

  resources :newsletters

  root :to => 'home#index'

  resources :posts do
    resources :comments, :only => [:create]
  end
end
