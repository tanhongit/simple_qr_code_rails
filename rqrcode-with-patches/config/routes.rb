Rails.application.routes.draw do
  resources :qr_codes, only: [:new, :create]
  root to: "qr_codes#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
