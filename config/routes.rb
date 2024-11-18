Rails.application.routes.draw do
  resources :patientdisease, param: :email, constraints: { email: /[^\/]+/ }
  resources :users, param: :email, constraints: { email: /[^\/]+/ }
  resources :specialize, param: :email, constraints: { email: /[^\/]+/ } do
  get ":email/:id/edit", to: "specialize#edit", as: "edit"
  patch ":email/:id", to: "specialize#update", as: "update"
  end
  resources :record, param: :email, constraints: { email: /[^\/]+/ } do
    get ":email/:cname/:disease_code/edit", to: "record#edit", as: "edit"
    patch ":email/:cname/:disease_code", to: "record#update", as: "update"
  end
  resources :publicservant, param: :email, constraints: { email: /[^\/]+/ }
  resources :patients, param: :email, constraints: { email: /[^\/]+/ }
  resources :doctor, param: :email, constraints: { email: /[^\/]+/ }
  resources :diseasetype
  resources :disease, param: :disease_code
  resources :discover, param: :disease_code
  resources :country
  get "welcome/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  resources :pages do
    collection do
      get :country
    end
  end
  root "layouts#index"
end
