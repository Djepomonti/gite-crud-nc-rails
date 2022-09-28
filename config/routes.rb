Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :rooms, only: %i[index show] do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[index show edit destroy update]
end
