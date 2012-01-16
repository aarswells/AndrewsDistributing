require 'refinery'

module Refinery
  module Alerts
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "alerts"
          plugin.activity = {:class => Alert,}
        end
      end
    end
  end
end
