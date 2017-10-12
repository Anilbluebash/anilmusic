Rails.application.routes.draw do

  get 'categories/:id' , to: "categories#show", as: :categories_show

  get "categories" , to: "categories#tags"

  get "songs" , to: "showcase#songs"

  resources :albums do
    resources :songs
  end
    
  devise_for :users, :controllers => { registrations: 'registrations' }
   
  root 'homes#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
