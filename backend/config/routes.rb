# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :api, format: 'json' do
    resources :home, only: %i[index]
  end
end
