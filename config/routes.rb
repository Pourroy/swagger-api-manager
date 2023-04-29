Rails.application.routes.draw do
  get 'swagger/info', to: 'api#info'
  mount Rswag::Api::Engine => 'swagger'
  mount Rswag::Ui::Engine => 'swagger'
end
