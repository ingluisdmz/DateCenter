Rails.application.routes.draw do
	devise_for :center_users

	root to: "center_users#profiles"

	resources :center_users do 
	  	collection do
	      get 'profiles' => 'center_users#profiles'
	      put 'update_profile' => 'center_users#update_profile'
	    end
	end
end
