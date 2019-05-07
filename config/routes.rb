Rails.application.routes.draw do
  get 'scenarios/index'
  get 'scenarios/new'
  get 'scenarios/edit'
  get 'scenarios/update'
  get 'scenarios/create'
  get 'scenarios/destroy'
  resources :customers, :scenarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

