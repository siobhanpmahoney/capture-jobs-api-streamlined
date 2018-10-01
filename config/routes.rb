Rails.application.routes.draw do
  resources :interviews
  resources :users
  resources :notes
  resources :jobs
  resources :companies
  resources :bookmarks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
