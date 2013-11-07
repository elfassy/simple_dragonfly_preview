Rails.application.routes.draw do
  namespace :simple_dragonfly_preview do
    get "iframe", to: "image#iframe"
    post "upload", to: "image#upload"
  end
end