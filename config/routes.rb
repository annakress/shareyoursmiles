Shareyoursmiles::Application.routes.draw do
  get "welcome/index"

  resources :smiles

  root :to => 'welcome#index'

  get '/faq', to: 'faq#index'

  get '/legal', to: 'legal#index'
end
