Rails.application.routes.draw do
  get 'welcome/index'
  resources :plans
  resources :custom_users
   
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/plans' => "plans#create"
  root 'welcome#index'

  get '/email' => "welcome#send_email"
  get '/insert_checkbox' => 'plans#set_checkbox'
end
