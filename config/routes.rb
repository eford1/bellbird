Rails.application.routes.draw do
  resources :alarms do
    resources :upvotes
  end

  root 'alarms#index'
end
