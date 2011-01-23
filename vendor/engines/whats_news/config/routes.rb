Refinery::Application.routes.draw do
  resources :whats_news

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :whats_news do
      collection do
        post :update_positions
      end
    end
  end
end
