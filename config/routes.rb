Rails.application.routes.draw do
  resources :subreddits
  root 'subreddits#index'
end
