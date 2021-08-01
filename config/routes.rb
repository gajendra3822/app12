Rails.application.routes.draw do
  resources :testers
  resources :pages
  resources :sections
  #get 'subjects/index'
  #get 'subjects/show'
  #get 'subjects/new'
  #get 'subjects/edit'
  #get 'subjects/delete'
  root 'demo#index'

  resources :subjects do
  member do
    get :delete
   end
  end 

  get 'demo/hello'
  get 'demo/youtube'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
