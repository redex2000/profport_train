Rails.application.routes.draw do
  root to: 'competences#index'

  resources :competences
  get 'site/index'
end
