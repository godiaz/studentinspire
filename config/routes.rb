Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'pages#about', as: :about
  get 'audience', to: 'pages#audience', as: :audience
  get 'student_stories', to: 'pages#student_stories', as: :student_stories
  get 'student_influencers', to: 'pages#student_influencers', as: :student_influencers
end
