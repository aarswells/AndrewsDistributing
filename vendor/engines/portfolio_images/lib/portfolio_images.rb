require 'refinery'

module Refinery
  module PortfolioImages
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end
      
      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "portfolio_images"
          plugin.activity = {:class => PortfolioImage,}
        end
      end
    end
  end
end
