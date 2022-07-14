Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :events
  root  "homes#index"
  resources :homes do
  	collection do
  	 get :test
  	end

  end
  post "chekouts/create" , to: "checkouts#create"
  
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
