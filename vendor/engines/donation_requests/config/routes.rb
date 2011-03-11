Refinery::Application.routes.draw do
  resources :donation_requests

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :donation_requests do
      collection do
        post :update_positions
      end
    end
  end
end
