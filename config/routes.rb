Rails.application.routes.draw do
  
  root 'movies#index'
  
  resources :movies do
    resources :actors
  end
  
  post '/movies/result', to: 'movies#result'  


end