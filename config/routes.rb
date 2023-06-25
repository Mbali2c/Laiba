Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events do
        member do
          post :booking, to: 'bookings#create'
        end
        collection do
          get :category, to: 'events#category'
        end
      end
      resources :users, only: [:show]
    end
  end
end
