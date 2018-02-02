Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlrails
  get '/', to: 'application#index'
  get '/users/:user_id/courses/', to: 'courses#index'
  get '/users/:user_id/courses/:id', to: 'courses#show'
  get '/users/:user_id/students/', to: 'students#index'
  get '/users/:user_id/students/:id', to: 'students#show'
  patch '/users/:user_id/students/:id', to: 'students#update'


  namespace :admin do
    get '/users', to: 'users#index'
	  get '/users/create/:num_students', to: 'users#generate'
	  get '/DANGER_CLEAR', to: 'users#clear'
	end


end
