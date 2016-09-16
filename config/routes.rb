Rails.application.routes.draw do
<<<<<<< HEAD
  resources :jobs
=======
>>>>>>> 706b46abaa1cb6db0663d27b927481aae9d66e32
  resources :profiles
  resources :skills

  # root to: "profiles#show", id: '1'
  root 'profiles#index'
end
