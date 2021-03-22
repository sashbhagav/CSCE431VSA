# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'events/index'
  # get 'events/new'
  # get 'events/show'
  # get 'events/edit'
  # get 'events/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'member_view#index'
  get 'member_view/index'
  get 'login/index'
  get 'events/login'
  get 'events/logout'
  get 'member_view/login'
  post "login/index" => "login#validate", :as => :LoginAttempt
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    member do
      get :delete
    end
  end

  resources :households do
    collection { post :import }
  end
end
