Rails.application.routes.draw do

  root 'meetups#new'

  get "directions" => "meetups#directions"

  get 'sessions/new'
  post 'sessions/new' => 'sessions#create'
  delete 'sessions/logout' => 'sessions#destroy'

  resources :pages

  resources :users
  resources :meetups


  resources :users do
  resources :meetups
end

resources :meetups

get "meetup/:slug" => "meetups#show"
get "directions" => "meetups#directions"
get "random_event" => "meetups#random"
get "cancel_event" => "meetups#cancel"
get "leave_event" => "meetups#leave"
get "about" => "pages#about"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
