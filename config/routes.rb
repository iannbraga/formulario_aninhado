Rails.application.routes.draw do
  resources :inventories
  devise_for :users, skip: :registrations
  
  # Restringe o escopo do CRUD de usuários para que apenas seja acessível por um usuário gerente.
  # No entanto, isso por si só não impede um atendente de acessar essas rotas se conhecerem o caminho.
  # A segurança real é feita dentro dos controllers usando Pundit.
  authenticate :user, lambda { |u| u.gerente? } do
    resources :users # Assumindo que você tem uma forma de criar usuários que não é o sign-up do Devise
  end
  resources :items
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "items#index"
end
