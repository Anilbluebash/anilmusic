Rails.application.routes.draw do
  get 'song/index'

  


    resources :songs, only: [:index]

    root 'home#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
