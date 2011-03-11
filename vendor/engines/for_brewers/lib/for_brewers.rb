require 'refinery'

module Refinery
  module ForBrewers
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "for_brewers"
          plugin.activity = {:class => ForBrewer,}
        end
      end
    end
  end
end
