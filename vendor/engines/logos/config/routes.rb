Refinery::Application.routes.draw do
  resources :logos

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :logos do
      collection do
        post :update_positions
      end
    end
  end
end
