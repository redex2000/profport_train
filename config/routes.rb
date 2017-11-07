# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: "competences#index"

  resources :competences
  resources :terms do
    # Добавляем нестандартное действие для одного термина (member)
    patch :learn, on: :member
  end
  resources :users

  namespace :api do
    resources :competences, only: [:index]
  end
end
