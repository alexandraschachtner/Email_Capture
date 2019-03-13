Rails.application.routes.draw do
  get 'welcome/index'

  resources :subscribes

  post 'manage', to: 'subscribes#manage'
  # post 'sub', to: 'subscribes#sub' as: :sub
  # post 'unsub', to: 'subscribes#unsub' as: :sub


  root 'welcome#index'
end
