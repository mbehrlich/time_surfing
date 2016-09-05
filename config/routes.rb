Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :show, :update, :destroy] do
      resources :references, only: [:index, :create]
    end
    resources :bookings, only: [:index, :create, :destroy]
    # get "guests", to: "bookings#guests"
    resources :sites, only: [:update]
    get "location", to: "sites#location"

    resource :session, only: [:create, :destroy]
  end

  root to: "static_pages#root"

end
