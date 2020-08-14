Rails.application.routes.draw do
  #get 'recipes/index'
  root to: 'recipes#index'

  resources :recipes do
    resources :instructions
    resources :ingredients
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
