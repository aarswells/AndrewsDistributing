Refinery::Application.routes.draw do
  resources :for_retailers

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :for_retailers do
      collection do
        post :update_positions
      end
    end
  end
end
