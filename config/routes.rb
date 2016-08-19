Rails.application.routes.draw do

  root to: 'welcome#home'

  resources :people do
    resources :address
    resources :favorites
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
