Rails.application.routes.draw do
  root to: 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [ :index, :new, :create, :show] do
    member do
      resources :reviews, only: :create
    end
  end

end
