Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome
  resources :messages
  root "welcome#index"

  get "/aplicativo", controller: 'welcome', action: 'aplicativo'
  get "/promocao", controller: 'welcome', action: 'promocao'
  get "/contato", controller: 'messages', action: 'index'
end
