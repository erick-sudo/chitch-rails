Rails.application.routes.draw do
  resources :matched_answers
  resources :session_questions
  resources :sessions
  resources :answers
  resources :questions
  resources :participants
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # 

  get "sessions/:session_id/answers/all", to: "sessions#all_answers"
  get "sessions/:session_id/matched_answers/:user_id", to: "sessions#matched_answers"
  get "sessions/:session_id/users/:user_id/unmatched_answers", to: "sessions#unmatched_answers"
end
