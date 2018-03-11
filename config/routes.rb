Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :show]
  resources :fights, only: [:new, :create, :index, :show]

  # get 'fights/users'

  # get 'fights/edit'

  root 'fights#home'

  # get 'fights/new'

  # get 'fights/show'

  # get 'fights/index'

end
