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
    namespace :v1 do
      resources :competences, only: [:index, :show]
    end

    namespace :v2 do
      resources :competences, only: [:index, :show, :create]
    end
  end
end
