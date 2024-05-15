Rails.application.routes.draw do
  get 'landing_page/index'
  root "landing_page#index"
  scope controller: :main do
    get :houses
    get :favourites
    get :add_house
    get :delete_house
  end
end
