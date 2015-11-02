Rails.application.routes.draw do

  resources :destinations do
    resources :locations
  end

  root "destinations#index"
end
