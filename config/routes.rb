Rails.application.routes.draw do


  get 'participantsadm/index'
  get 'participantsadm/new'
  get 'participantsadm/edit'
  get 'participants/index'
  get 'participants/new'
  get 'participants/edit'
  get 'sessions/index'
  get 'sessions/new'
  get 'sessions/show'
  get 'sessions/edit'
  devise_for :users, controllers: {registrations: 'override/registrations'}

  #
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get '/participants', to: 'participants#liste', as: 'participants'


  root 'home#index'
  match "/" => "home#index", :via => :post, :as => :home

  resources :participants
  resources :utilisateurs
  resources :sessions
  resources :questionnaires
  resources :participantsadm


  get '/admin', to: 'admin#index', as: 'admin'
  #get 'admin/index'
  get 'admin/dashboard'

  mount EduevalApi::Base => '/'

end
