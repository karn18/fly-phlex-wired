require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module FlyPhlexWired
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Bangkok"
    # config.eager_load_paths << Rails.root.join("extras")
    config.assets.excluded_paths << Rails.root.join("app", "assets", "stylesheets")
    # config.skylight.environments += ["development"]

    config.exceptions_app = ->(env) {
      puts env
      ErrorsController.action(:show).call(env)
    }
  end
end
