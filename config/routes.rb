Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome
  resources :messages
  root "welcome#index"

  get "/aplicativo", controller: 'welcome', action: 'aplicativo'
  get "/promocao", controller: 'welcome', action: 'promocao'
  get "/contato", controller: 'messages', action: 'index'
  get "/admin", controller: 'users', action: 'index'
  get "/home_admin", controller: 'users', action: 'home_admin'
  get "/promocao_admin", controller: 'users', action: 'promocao_admin'
  get "/aplicativo_admin", controller: 'users', action: 'aplicativo_admin'
  get "/mensagens_admin", controller: 'users', action: 'mensagens_admin'
end
