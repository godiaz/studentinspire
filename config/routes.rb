Rails.application.routes.draw do
  root to: 'pages#home'
  get 'student_influencers', to: 'pages#student_influencers', as: :student_influencers
  post 'subscribe', to: 'pages#subscribe'
  # get 'employers', to: 'pages#employers', as: :employers
  get 'capgemini', to: 'pages#capgemini', as: :capgemini
  get 'student_stories', to: 'pages#student_stories', as: :student_stories
  get 'employers', to: 'pages#employers', as: :employers
  resources :student_influencers
  resources :employers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


