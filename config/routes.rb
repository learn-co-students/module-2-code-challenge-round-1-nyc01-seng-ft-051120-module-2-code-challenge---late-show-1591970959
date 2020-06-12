Rails.application.routes.draw do
  # Hi Greg, I will narrow these down if I have time at the end of the challenge. 
  resources :appearances
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
end
