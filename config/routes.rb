Rails.application.routes.draw do

 devise_for :users
 resources :pics do
	 	member do
	 		put "like", to: "pics#upvote"
	 	end
	end

 root 'pics#index'
 get 'mypics' => 'pics#mypics'
end
