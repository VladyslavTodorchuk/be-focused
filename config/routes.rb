Rails.application.routes.draw do
  resources :goals

  post 'goals/change'

  root 'about#index'
end
