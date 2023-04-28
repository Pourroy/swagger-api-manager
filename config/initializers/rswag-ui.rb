Rswag::Ui.configure do |c|

  # List the Swagger endpoints that you want to be documented through the swagger-ui
  # The first parameter is the path (absolute or relative to the UI host) to the corresponding
  # endpoint and the second is a title that will be displayed in the document selector
  # NOTE: If you're using rspec-api to expose Swagger files (under swagger_root) as JSON or YAML endpoints,
  # then the list below should correspond to the relative paths for those endpoints

  c.swagger_endpoint '/ea/operational/fulfillment/cloud/swagger/v1/ea-op-ful-cloud-vm-api.yaml', 'API Virtual Machine V1'
  c.swagger_endpoint '/ea/operational/fulfillment/cloud/swagger/v1/ea-op-ful-cloud-control-api.yaml', 'API Control V1'

  # Add Basic Auth in case your API is private
  # c.basic_auth_enabled = true
  # c.basic_auth_credentials 'username', 'password'
end