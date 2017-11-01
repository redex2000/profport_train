# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "competences#index"

  resources :competences
  resources :users
  get "site/index"
end
