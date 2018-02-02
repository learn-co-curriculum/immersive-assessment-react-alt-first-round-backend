Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlrails
<<<<<<< HEAD
  namespace :api do
		namespace :v1 do
=======
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

>>>>>>> f2685737dc002a1ec6905bd8d5e6826dd79af737

      get '/courses/', to: 'courses#index'
      get '/courses/:id', to: 'courses#show'
      get '/students/', to: 'students#index'
      get '/students/:id', to: 'students#show'
      patch '/students/:id', to: 'students#update'
      post '/students/:id', to: 'students#update'
    end
  end
  get '/', to: 'application#index'
end
