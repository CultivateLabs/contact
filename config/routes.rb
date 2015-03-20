Contact::Engine.routes.draw do
  get "/#{Contact.contact_page_path}", to: 'messages#new', as: :contact
  resources :messages, only: :create
  resources :forms, only: [] do
    resources :messages, only: :create
  end
end
