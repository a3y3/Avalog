Rails.application.routes.draw do
  get 'welcome/index'
   
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/plan' => "plans#create"
  root 'welcome#index'
end
