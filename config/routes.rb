Rails.application.routes.draw do

  root 'farmers#index'

  resources :farmers
end
