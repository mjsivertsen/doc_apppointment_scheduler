Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :doctors
  end

  namespace :api do
    resources :patients
  end

  namespace :api do
    resources :appointments
  end


end
