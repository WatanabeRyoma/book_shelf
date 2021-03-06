Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'users/omniauth_callbacks'}
  resources :books do
    resources :reviews, except: :index
  end

  root "books#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
