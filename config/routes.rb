Rails.application.routes.draw do

  devise_for :users
  resources :events
  resource :user

get "/faq" => "pages#faq"

root "events#index"


namespace :admin do
    root "events#index"
resources :users
    resources :events do
      resources :tickets, :controller => "event_tickets"

             collection do
             post :bulk_update
           end
      end
  end
end
