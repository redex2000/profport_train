# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: "competences#index"

  concern :commentable do
    resources :comments
  end

  resources :competences, concerns: [:commentable] do
    member do
      patch :learn
      patch :learn_later
    end

    resources :terms, only: [] do
      # Добавляем нестандартное действие для одного термина (member)
      patch :learn, on: :member
    end
  end
  resources :terms, only: [:index, :show], concerns: [:commentable]
  resources :users
  resources :compies, only: [] do
    get :activity, on: :collection
  end

  resources :private_competences, controller: :competences, type: "PrivateCompetence", concerns: [:commentable]
  resources :professional_competences, controller: :competences, type: "PrivateCompetence", concerns: [:commentable]

  namespace :api do
    namespace :v1 do
      resources :competences, only: [:index, :show]
    end

    namespace :v2 do
      resources :competences, only: [:index, :show, :create]
      resources :users, only: [] do
        collection do
          post :sign_up
          post :sign_in
        end
      end
    end
  end
end
