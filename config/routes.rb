Rails.application.routes.draw do
  root 'quizs#index'
  resources :quizs
  end
