Refinery::Application.routes.draw do
  resources :homepage_images

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :homepage_images do
      collection do
        post :update_positions
      end
    end
  end
end
