Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :interviews
      resources :users
      resources :notes
      resources :jobs
      resources :companies
      resources :bookmarks
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
