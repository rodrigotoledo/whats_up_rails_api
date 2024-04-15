# frozen_string_literal: true

Rails.application.routes.draw do
  get 'conversations', to: 'conversations#index', as: :conversations
  get 'messages', to: 'messages#index', as: :messages
end
