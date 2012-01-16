Refinery::Application.routes.draw do
  resources :alerts

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :alerts do
      collection do
        post :update_positions
      end
    end
  end
end
