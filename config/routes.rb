Rails.application.routes.draw do
  resources :alarms

  root 'alarms#index'
end
