Rails.application.routes.draw do

  match '/users',   to: 'users#index',   via: 'get'
  match '/users/:id/addsome_money',   to: 'users#addsome_money',   via: 'get', as: 'users_addsome_money'
  match '/users/remove_money',   to: 'users#remove_money',   via: 'post'

  get 'users/index'

  resources :users do
	collection do
		get 'show'
		devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
	end 
  end

  root 'users#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
