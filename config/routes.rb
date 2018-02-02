Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlrails
  get '/', to: 'application#index'
  get '/user/:user_id/courses/', to: 'courses#index'
  get '/user/:user_id/courses/:id', to: 'courses#show'
  get '/user/:user_id/students/', to: 'students#index'
  get '/user/:user_id/students/:id', to: 'students#show'
  patch '/user/:user_id/students/:id', to: 'students#update'


  namespace :admin do
    get '/users', to: 'users#index'
	  get '/users/create/:num_students', to: 'users#generate'
	  get '/DANGER_CLEAR', to: 'users#clear'
	  get '/DANGER_CLEAR_EXPERIMENT', to: 'users#drop'
	end


end
