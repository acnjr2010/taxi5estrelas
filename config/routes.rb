Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome
  resources :messages
  resources :homes
  resources :aplicativos
  resources :promocaos

  root "welcome#index"

  get "/app", controller: 'welcome', action: 'app'
  get "/promo", controller: 'welcome', action: 'promocao'
  get "/contato", controller: 'messages', action: 'index'
  get "/admin", controller: 'users', action: 'index'
  get "/home_admin", controller: 'homes', action: 'home_admin'
  get "/promocao_admin", controller: 'promocaos', action: 'promocao_admin'
  get "/aplicativo_admin", controller: 'aplicativos', action: 'aplicativo_admin'
  get "/mensagens_admin", controller: 'messages', action: 'mensagens_admin'



end
