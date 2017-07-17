Rails.application.routes.draw do

  devise_for :users
  resources :events
  resource :user

get "/faq" => "pages#faq"

namespace :admin do
    root "events#index"
    resources :events do
      resources :tickets, :controller => "event_tickets"
    end
    resources :users
end

  root "events#index"
         collection do
         post :bulk_update
       end
end
