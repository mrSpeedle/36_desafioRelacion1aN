Rails.application.routes.draw do
  root "clients#index"
  resources :movies
  resources :clients do
    member do
      get :confirm_destroy #DOBLE CONFIRMACIÓN
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end
