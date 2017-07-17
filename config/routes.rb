Rails.application.routes.draw do

  devise_for :users
  resources :events do
      resources :tickets, :controller => "event_tickets"
  resource :user
end

get "/faq" => "pages#faq"

namespace :admin do
    root "events#index"
    resources :events
     resources :users do
       resource :profile, :controller => "user_profiles"
     end
 end

  root "events#index"
end
