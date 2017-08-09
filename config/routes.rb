Rails.application.routes.draw do
  devise_for :users
  resources :events do
     get  :join, to: 'events#join', as: 'join'
     get  :accept_request, to: 'events#accept_request', as: 'accept_request'
     get  :reject_request, to: 'events#reject_request', as: 'reject_request'
  end
  root 'events#index', as: 'home_events'
  resources :events 
   get  :my_events, to: 'events#my_events', as: 'my_events'

end
