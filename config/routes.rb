require 'sidekiq/web'
Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "stores#index"
  post '/stores/server', to: 'stores#server'
  get '/stores/status_partial', to: 'stores#status_partial'

  mount Sidekiq::Web => "/sidekiq"

  namespace :api do
    namespace :v1 do
      post 'status_report', to: 'data#status_report'
    end
  end

end
