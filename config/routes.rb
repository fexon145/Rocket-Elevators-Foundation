Rails.application.routes.draw do
  resources :interventions
  resources :leads
  devise_for :users
  resources :quotes
  get 'website/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'website#index'
  
  get '/index', to: 'website#index'
  
  get '/residential', to: 'website#residential'

  get '/commercial', to: 'website#commercial'

  get '/quote', to: 'website#quote'

  get '/intervention', to: 'website#intervention'

  get '/trivia', to: 'website#trivia'

  get '/machineLearning', to: 'website#machineLearning'

  get '/google', to: 'google#maps'

  post '/watson/greetings', to: 'watson#greetings'

  get 'building_select/:customerID', to: 'interventions#building_select'

  get 'battery_select/:buildingID', to: 'interventions#battery_select'

  get 'column_select/:batteryID', to: 'interventions#column_select'

  get 'elevator_select/:columnID', to: 'interventions#elevator_select'

end

