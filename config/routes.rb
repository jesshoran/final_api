Rails.application.routes.draw do
  resources :workouts 
  get '/high_impact', to: "workouts#high_impact"
  get '/low_impact', to: "workouts#low_impact"
  get '/core_blast', to: "workouts#core_blast"
  get '/leg_day', to: "workouts#leg_day"
  get '/surprise_me', to: "workouts#surprise_me"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
