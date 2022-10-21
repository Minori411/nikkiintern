Rails.application.routes.draw do
  
  root 'news#index'

  resources :news
  post 'news/create'

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
