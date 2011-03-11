Refinery::Application.routes.draw do
  resources :brewers

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :brewers do
      collection do
        post :update_positions
      end
    end
  end
end
