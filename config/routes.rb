Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'sessions/welcome'
  get 'sessions/about_us'
  get 'sessions/contact_us'

  get 'home/index'
  root'home#index'
  resources :users

  resources :sessions,only:[:new,:create,:destroy]

  get 'signup', to:'users#new', as:'signup'
  get 'login', to:'sessions#new', as:'login'
  get 'logout', to: 'sessions#destroy', as:'logout'
  get 'logout', to:'sessions#welcome', as:'welcome'
	
	#get 'display/save'
	#get 'display/login'
	#get 'display/registration'
	#get 'display/back'


	#get 'book/list'
	#get 'book/Login1'
	#get 'book/Registration1'
	#get 'book/list1'
	#get 'book/show'

	#get 'book/create'
	#get 'book/new'

	#get 'book/edit'
	#get 'book/update'

	#get 'book/delete'
	#get 'book/destroy'

	#root 'display#save'
	#get "/display", to:"display#save"


	match ':controller(/:action(/:id(.:format)))', :via => [:get, :post]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
