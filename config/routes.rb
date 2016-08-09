Rails.application.routes.draw do

  resources :kardashians do
    resources :comments
  end

  get 'hi/index'
  root 'hi#index'

end
