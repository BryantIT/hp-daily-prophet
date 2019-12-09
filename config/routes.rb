Rails.application.routes.draw do
  resources :events
  resources :articles
  resources :newsletters
  root to: 'application#welcome'
  devise_for :users, path: 'users', :controllers => {registrations: 'registrations', omniauth_callbacks: 'omniauth'},
  :path_names => {
    :sign_in => 'login',
    :sign_out => 'logout',
    :password => 'secret',
    :confirmation => 'verification',
    :unlock => 'unblock',
    :registration => 'profile',
    :sign_up => 'signup' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
