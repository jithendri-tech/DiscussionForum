Rails.application.routes.draw do
  #get 'welcome/index'
 
  #root 'welcome#index'
  root to: "welcome#index"
  resources :articles do
    resources :comments
    collection do
      get :search
    end
  end 
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

end
