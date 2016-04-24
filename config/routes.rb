Rails.application.routes.draw do
  root 'info#index'
  resources :info
  resources :quotes, :defaults => { :format => :json }
end
