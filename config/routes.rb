Rails.application.routes.draw do
  resources :article3s
  resources :users
  resources :articles2s
  resources :articles
  get '/', to: "pages#welcome"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
