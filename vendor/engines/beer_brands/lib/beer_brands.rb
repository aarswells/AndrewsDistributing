require 'refinery'

module Refinery
  module BeerBrands
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end
      
      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "beer_brands"
          plugin.activity = {:class => BeerBrand,
          :title => 'main_category'
        }
        end
      end
    end
  end
end
