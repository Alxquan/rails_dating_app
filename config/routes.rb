Rails.application.routes.draw do

  root to: 'welcome#home'

  get 'people/female', to: 'people#female'

  resources :people do
    resources :addresses
    resources :favorites
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
