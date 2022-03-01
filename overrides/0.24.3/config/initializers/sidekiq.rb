if ENV.fetch("RAILS_JOB_MODE", "default") == "sidekiq" && ENV["JOB_REDIS_URL"].present?
    Sidekiq.configure_server do |config|
        config.redis = { url: ENV.fetch("JOB_REDIS_URL") }
    end

    Sidekiq.configure_client do |config|
        config.redis = { url: ENV.fetch("JOB_REDIS_URL") }
    end
end