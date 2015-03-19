Contact::Engine.routes.draw do
  get "/#{Contact.contact_page_path}", to: 'messages#new', as: :contact
  post 'messages/create', as: :messages
end
