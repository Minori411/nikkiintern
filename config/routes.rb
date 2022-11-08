Rails.application.routes.draw do
  resources :notifications, only: :index
  resources :schedules, only: :index
  get 'schedules/events/new', to: 'schedules#new', as: :schedulesnew
  post "schedules/events/new", to: 'schedules#create', as: :schedulescreate
  get "schedules/events/show", to: 'schedules#show', as: :schedulesshow
  
  root 'news#index'
  get 'news/archives', to: 'news#archives', as: :archives
  post 'news/:id/archive', to: 'news#archive', as: :archive
  post 'news/:id/back', to: 'news#back', as: :back
  resources :news
  post 'news/create', to: 'news#create'

  get "search" => "news#search"

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords'
  }

  devise_scope :user do
    get '/users', to: redirect("/users/sign_up")
    delete "logout", to: "users/sessions#destroy"
  end

  delete '/users/:id/withdrawal', to: 'users#withdrawal', as: 'withdrawal'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
