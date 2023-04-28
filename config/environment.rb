# Load the Rails application.
require_relative "application"
require 'logger'

Rails.application.initialize!

Rails.logger = Logger.new(STDOUT)
Rails.application.configure do
  config.logger = ActiveSupport::Logger.new("log/#{Rails.env}.log")
end
