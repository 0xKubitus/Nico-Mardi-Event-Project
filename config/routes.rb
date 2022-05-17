Rails.application.routes.draw do
 
  devise_for :users


  #Ensure you have defined root_url to *something* in your config/routes.rb.
     #For example:       #root to: "home#index"


  resources :users

  resources :events do 
    resources :attendances
  end

  
end
