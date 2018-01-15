Rails.application.routes.draw do

  root 'welcome#index'

  resources :adr_indicators, :ops_indicators
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
