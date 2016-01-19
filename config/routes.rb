require 'sidekiq/web'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  mount Bouquet::Gate::Engine => '/api'
  mount Bouquet::Store::Engine => '/store'

  mount DrawUml::Engine, at: '/rails/draw/uml'

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
