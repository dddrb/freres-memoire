Rails.application.routes.draw do
  mount Bouquet::Gate::Engine => "/api"
  mount Bouquet::Store::Engine => "/store"

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
