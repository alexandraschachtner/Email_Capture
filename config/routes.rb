Rails.application.routes.draw do
  get 'welcome/index'

  resources :subscribes

  post 'manage', to: 'subscribes#manage'

  root 'welcome#index'
end
