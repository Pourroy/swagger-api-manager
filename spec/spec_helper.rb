ENV['RAILS_ENV'] ||= 'test'
ENV['RSPEC'] = 'on'

require File.expand_path('../config/environment', __dir__)
# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'

if ENV['COVERAGE'] == 'on'
  require 'simplecov'
  require 'simplecov-rcov'
  require 'simplecov-console'
  require 'simplecov-cobertura'

  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
    SimpleCov::Formatter::CoberturaFormatter
  ]

  SimpleCov.start 'rails'
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end
  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
end

RSpec.configure do |config|
  config.use_active_record = false
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
end
