Rails.application.routes.draw do
  
  resources :events do 
    resources :attendances
  end

  resources :users
end
