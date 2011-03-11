Refinery::Application.routes.draw do
  resources :managements

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :managements do
      collection do
        post :update_positions
      end
    end
  end
end
