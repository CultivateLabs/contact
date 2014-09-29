Contact::Engine.routes.draw do
  get :contact, to: 'messages#new', as: :contact
  post 'messages/create', as: :messages
end
