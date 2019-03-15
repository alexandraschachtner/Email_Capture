Rails.application.routes.draw do
  get 'welcome/index'

  resources :subscribes

  post 'manage', to: 'subscribes#manage'
  post 'sub', to: 'subscribes#sub'
  # post 'unsub', to: 'subscribes#unsub'


  root 'welcome#index'
end
