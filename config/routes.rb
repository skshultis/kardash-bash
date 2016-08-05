Rails.application.routes.draw do

resources :dashs

  get 'dash/index'

  get 'hi/index'
  root 'hi#index'
end
