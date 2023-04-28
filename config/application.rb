require_relative "boot"
require "rails"
require "action_controller/railtie"
require "action_mailer/railtie"

Bundler.require(*Rails.groups)

module Application
  class Application < Rails::Application
    config.load_defaults 7.0
    config.api_only = true
  end
end
