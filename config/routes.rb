Rails.application.routes.draw do
  devise_for :admins
  devise_for :user, 
						  controllers: {
						        sessions: 'blabla/sessions'
						      }

  namespace :user do
    resources :bookitems
    # root to: 'users/bookitems#index'
    root to: 'bookitems#index'
	end

  namespace :admins do
    resources :bookitems
    # root to: 'admins/bookitems#index'
    root to: 'bookitems#index'
  end

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
