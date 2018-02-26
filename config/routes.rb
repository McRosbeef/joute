Rails.application.routes.draw do
  get 'users/new'

  get 'users/edit'

  get 'users/show'

  get 'fights/users'

  get 'fights/edit'

  root 'fights#home'

  get 'fights/new'

  get 'fights/show'

  get 'fights/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
