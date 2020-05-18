Rails.application.routes.draw do
 
  resources :songs, except: [:destroy]
  resources :artists, except: [:index,:destroy]
  resources :genres, except: [:index,:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
