Rails.application.routes.draw do
  root to: "application#index"
  mount Contact::Engine => "/"
end