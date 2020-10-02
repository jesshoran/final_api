Rails.application.routes.draw do
  resources :workouts 
  get '/high_impact', to: "workouts#high_impact"
  get '/low_impact', to: "workouts#low_impact"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
