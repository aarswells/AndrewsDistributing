Refinery::Application.routes.draw do
  resources :portfolio_images

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :portfolio_images do
      collection do
        post :update_positions
      end
    end
  end
end
