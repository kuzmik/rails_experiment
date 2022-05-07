# frozen_string_literal: true

require 'sidekiq_unique_jobs/web'

Rails.application.routes.draw do
  resources :groups
  resources :posts

  get '/overview', to: 'overview#index'
  get '/overview/aj', to: 'overview#active_job'
  get '/overview/sk', to: 'overview#sidekiq'

  root 'posts#index'

  mount Sidekiq::Web, at: '/sidekiq'
end
