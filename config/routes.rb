Rails.application.routes.draw do
 
  #Ensure you have defined root_url to *something* in your config/routes.rb.
     #For example:       #root to: "home#index"

  resources :events do 
    resources :attendances
  end

  resources :users
end
