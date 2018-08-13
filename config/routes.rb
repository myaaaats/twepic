Rails.application.routes.draw do
  get '/twepics', to: 'twepics#index'
  resources :twepics
end
