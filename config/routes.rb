Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlrails
  get '/', to: 'application#index'
  get '/courses/', to: 'courses#index'
  get '/courses/:id', to: 'courses#show'
  get '/students/', to: 'students#index'
  get '/students/:id', to: 'students#show'
  patch '/students/:id', to: 'students#update'

end
