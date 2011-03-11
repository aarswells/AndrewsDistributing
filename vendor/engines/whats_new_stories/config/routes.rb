Refinery::Application.routes.draw do
  resources :whats_new_stories

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :whats_new_stories do
      collection do
        post :update_positions
      end
    end
  end
end
