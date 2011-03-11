Refinery::Application.routes.draw do
  resources :for_brewers

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :for_brewers do
      collection do
        post :update_positions
      end
    end
  end
end
