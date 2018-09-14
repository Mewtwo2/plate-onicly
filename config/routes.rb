Rails.application.routes.draw do
root to: "users#new"

  resources :meetups
  resources :users

  get "directions" => "meetups#directions"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
