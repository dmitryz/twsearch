# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'search#index'

  resource :search, only: :index
  namespace :api, defaults: { format: :json } do
    resources :tweets
  end
end
