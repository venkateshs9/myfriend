Rails.application.routes.draw do

  root 'welcome#index'

  resources :login do
  	get 'login', to: 'login#login'
  end

  resources :sellers do
  end

  resources :buyers do
  end


end
