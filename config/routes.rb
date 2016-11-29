Rails.application.routes.draw do
  # mount_devise_token_auth_for 'User', at: 'users'
  mount_devise_token_auth_for 'User', at: 'users', :controllers => { registrations: 'registrations' }
  resources :users
  resources :programs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
