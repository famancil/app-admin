Rails.application.routes.draw do
  resources :corporacions do
  	resources :users
  end
  #resources :users
  get 'login' => 'login#index', as: 'login'
  post 'login'=> 'login#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
