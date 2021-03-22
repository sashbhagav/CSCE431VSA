Rails.application.routes.draw do

  # get 'households/delete'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :events do
    member do
        get :delete
    end
  end

  resources :households do
    collection { post :import}
    member do
        get :delete
    end
  end

end
