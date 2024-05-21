Rails.application.routes.draw do
  get 'landing_page/index'
  root "landing_page#index"
  scope controller: :main do
    get :houses
    get :favourites
    get :add_house
    post :create_house
    patch 'houses/:id/toggle_favourite', to: 'main#toggle_favourite', as: :toggle_favourite
    delete 'houses/:id', to: 'main#delete_house', as: :delete_house
  end
end
