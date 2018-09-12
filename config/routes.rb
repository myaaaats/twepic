Rails.application.routes.draw do
  root 'tops#index'
  get 'sessions/new'

  get '/twepics', to: 'twepics#index'
  resources :twepics do
    collection do
      post :confirm
    end
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
