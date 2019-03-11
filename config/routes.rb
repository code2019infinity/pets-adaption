Rails.application.routes.draw do
  
  get 'pages/index'
 root 'pages#index'
  devise_for :users
  resources :animals do 
    resources :comments
  end

  root to: 'animals#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
