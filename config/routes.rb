Rails.application.routes.draw do
  get '/twepics', to: 'twepics#index'
  resources :twepics do
    collection do
      post :confirm
    end
  end
end
