require "sidekiq/web"

Rails.application.routes.draw do
  mount Decidim::Core::Engine => '/'
  authenticate(:admin) do
    mount Sidekiq::Web => '/_queuedjobs'
  end
end
