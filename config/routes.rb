# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "payment_requests#index"

  resources :payment_requests, only: %i[ index ] do
    member do
      get :approve
      get :reject
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
