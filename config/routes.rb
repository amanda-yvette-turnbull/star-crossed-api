Rails.application.routes.draw do
  scope '/api/v1' do
  resources :star_signs
  resources :users
  get '/auth/:auth0_id', to: 'users#showauth'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  end
end
