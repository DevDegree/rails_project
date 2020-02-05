Rails.application.routes.draw do
  root 'posts#index', as: 'posts'
  get 'static_pages/about', as: 'about'
  get 'posts/stats'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
