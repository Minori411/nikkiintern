Rails.application.routes.draw do
  resources :notifications, only: :index
  resources :schedules, only: :index
  get 'schedules/events/new', to: 'schedules#new', as: :schedulesnew
  post "schedules/events/new", to: 'schedules#create', as: :schedulescreate
  patch "schedules/events/:id/update", to: "schedules#update", as: :schedulesupdatepatch
  get "schedules/events/:id/update", to: "schedules#update", as: :schedulesupdateget
  delete "schedules/events/:id/destroy", to: "schedules#destroy", as: :schedulesdestroy
  
  root 'news#index'
  get 'news/archives', to: 'news#archives', as: :archives
  post 'news/:id/archive', to: 'news#archive', as: :archive
  post 'news/:id/back', to: 'news#back', as: :back
  resources :news
  post 'news/create', to: 'news#create'

  get "search" => "news#search"
  get "archive/search" => "news#archive_search", as: :archivesearch
  get "schedule/search" => "schedules#schedule_search", as: :schedulessearch

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
