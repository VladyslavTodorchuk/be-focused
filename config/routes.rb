Rails.application.routes.draw do
  resources :goals, only: %i[index new edit create update destroy show]

  post 'goals/change'

  root 'about#index'
end
