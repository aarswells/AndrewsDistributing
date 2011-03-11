Refinery::Application.routes.draw do
  resources :regions

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :regions do
      collection do
        post :update_positions
      end
    end
  end
end
