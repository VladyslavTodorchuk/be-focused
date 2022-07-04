require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BeFocused
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0
    config.serve_static_assets = true

    # Disable Rails's static asset server (Apache or nginx will already do this)
    # Compress JavaScripts and CSS
    config.assets.compress = true

    # Don't fallback to assets pipeline if a precompiled asset is missed
    config.assets.compile = true

    # Generate digests for assets URLs
    config.assets.digest = true

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
