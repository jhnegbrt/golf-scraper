Rails.application.routes.draw do

  resources :players

  resources :teams

  root to: "players#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
