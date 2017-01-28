Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/privacy'

  resources :infos
  resources :taps
  resources :surveys
  # mount_devise_token_auth_for 'User', at: 'users'
  mount_devise_token_auth_for 'User', at: 'users', :controllers => { registrations: 'registrations' }
  resources :users
  resources :programs
  match '*path', via: [:options], to:  lambda {|_| [204, {'Access-Control-Allow-Headers' => "Origin, Content-Type, Accept, Authorization, Token", 'Access-Control-Allow-Origin' => "*", 'Content-Type' => 'text/plain'}, []]}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
