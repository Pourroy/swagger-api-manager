class ApiController < ApplicationController
  def info
    env = Rails.env
    version = ENV['APP_VERSION']
    @data = { environment: env, version: version }
    render json: @data, status: :ok
  end
end
