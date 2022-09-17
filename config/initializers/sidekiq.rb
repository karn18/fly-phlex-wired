require 'sidekiq'
# require 'sidekiq-scheduler'

redis_conn = proc {
  # Redis.new # do anything you want here
  Redis.new url: ENV.fetch("REDIS_URL")
}

Sidekiq.configure_client do |config|
  config.redis = ConnectionPool.new(size: 5, &redis_conn)
end

Sidekiq.configure_server do |config|
  config.redis = ConnectionPool.new(size: 25, &redis_conn)
  config.error_handlers << proc do |exception, _|
    Rails.logger.error("Exception #{exception.class}: #{exception.message} -> #{exception.backtrace.inspect}")
  end
end

# SidekiqUniqueJobs.configure do |config|
  # config.debug_lua       = true
  # config.lock_info       = true
  # config.lock_ttl        = 10.minutes
  # config.lock_timeout    = 10.minutes
  # config.logger = Sidekiq.logger
  # config.max_history     = 10_000
  # config.reaper          = :lua
  # config.reaper_count    = 100
  # config.reaper_interval = 10
  # config.reaper_timeout  = 5
# end
