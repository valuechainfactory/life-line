Rails.application.routes.draw do
  devise_for :doctors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "doctors#index"
  devise_scope :doctor do get '/doctors/sign_out' => 'devise/sessions#destroy' end

  resources :patients, only: [:index, :show, :new, :create, :destroy]
end
