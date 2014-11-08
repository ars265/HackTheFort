Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :states
      resources :counties
      resources :statistics
    end
  end
end
