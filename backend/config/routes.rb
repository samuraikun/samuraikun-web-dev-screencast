Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :lessons, only: %i[index show]
      resources :users, only: %i[index show]
    end
  end
end
