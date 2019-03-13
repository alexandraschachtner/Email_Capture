Rails.application.routes.draw do
  get 'welcome/index'

  resources :subscribes

  root 'welcome#index'
end
