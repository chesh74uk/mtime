Rails.application.routes.draw do
  
  resources :tests do
    resources :events
  end
  resources :customers
  resources :scenarios
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

