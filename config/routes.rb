Rails.application.routes.draw do
  resources :risk_countnings
  resources :risk_docs
  resources :riscos
  resources :risks


  get '/risks_count' => 'risks_count#getCategoriaComunicacao'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
