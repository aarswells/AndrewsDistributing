require 'refinery'

module Refinery
  module WhatsNewStories
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "whats_new_stories"
          plugin.activity = {:class => WhatsNewStory,}
        end
      end
    end
  end
end
