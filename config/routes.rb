Rails.application.routes.draw do

  root 'charts#index'

  resources :charts do 
    resources :artists 
  end

  resources :artists do 
    resources :songs 
  end


end 