Rails.application.routes.draw do
  get 'favorite/index'

  get 'favorite/show'

  get 'favorite/edit'

  get 'favorite/new'

  get 'person/index'

  get 'person/show'

  get 'person/edit'

  get 'person/new'

  get 'address/index'

  get 'address/show'

  get 'address/new'

  get 'address/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
