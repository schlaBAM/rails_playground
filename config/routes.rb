Rails.application.routes.draw do

  get 'emails/index'
  root "home#index"

  get '/about' => "home#about"
  #get '/emails' => "emails#index"

  resources :emails

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
