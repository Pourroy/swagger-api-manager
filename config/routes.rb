Rails.application.routes.draw do
  namespace :ea, defaults: { format: :json } do
    namespace :operational do
      namespace :fulfillment do
        get 'cloud/swagger/info', to: 'api#info'
        mount Rswag::Api::Engine => 'cloud/swagger'
        mount Rswag::Ui::Engine => 'cloud/swagger'
      end
    end
  end
end
