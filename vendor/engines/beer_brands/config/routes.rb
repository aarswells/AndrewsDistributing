Refinery::Application.routes.draw do
  resources :beer_brands

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :beer_brands do
      collection do
        post :update_positions
      end
    end
  end
end
