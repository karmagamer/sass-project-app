Rails.application.routes.draw do

<<<<<<< HEAD
  resources :user_projects
  resources :artifacts
  resources :tenants do
    resources :projects do
      get 'users', on: :member 
      put 'add_user', on: :member 
    end
=======
  resources :artifacts
  resources :tenants do
    resources :projects
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
  end
  resources :members
  get 'home/index'

   root :to => "home#index"

<<<<<<< HEAD
    
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => { 
    :registrations => "registrations",
    :confirmations => "confirmations",
    :sessions => "milia/sessions", 
    :passwords => "milia/passwords", 
  }
  
  match '/plan/edit' => 'tenants#edit', via: :get, as: :edit_plan
  match '/plan/update' => 'tenants#update', via: [:put, :patch], as: :update_plan


=======

  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => {
    :registrations => "milia/registrations",
    :confirmations => "confirmations",
    :sessions => "milia/sessions",
    :passwords => "milia/passwords",
  }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> ac88b1ce3a024e80a257d71624d22e1b8e57a03d
end
