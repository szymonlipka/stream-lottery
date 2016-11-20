Rails.application.routes.draw do
  resources :lottery_tickets
  root to: 'visitors#index'
end
