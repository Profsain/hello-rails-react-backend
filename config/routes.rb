Rails.application.routes.draw do
  get 'root/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  namespace :api do
    namespace :v1 do
      resources :greetings, only: [:index]
      get 'random_greeting', to: 'greetings#random_greeting'
    end
  end
end
