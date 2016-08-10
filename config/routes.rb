Rails.application.routes.draw do

  devise_for :users
  resources :kardashians do
    resources :comments
  end

  get 'hi/index'
  root 'hi#index'

end
