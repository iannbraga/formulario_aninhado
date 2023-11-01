Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  
  authenticate :user, lambda { |u| u.gerente? } do
    resources :users # Assumindo que você tem uma forma de criar usuários que não é o sign-up do Devise
  end
  
  resources :items
  
  resources :inventories
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
end
