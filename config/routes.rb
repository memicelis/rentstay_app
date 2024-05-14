Rails.application.routes.draw do
  get 'landing_page/index'
  root "landing_page#index"
end
