Rails.application.routes.draw do
  get 'landing_page/index'
  root "landing_page#index"
  scope controller: :main do
    get :houses
    get :favourites
    get :add_house
    post :create_house
    delete 'houses/:id', to: 'main#delete_house', as: :delete_house
  end
end
