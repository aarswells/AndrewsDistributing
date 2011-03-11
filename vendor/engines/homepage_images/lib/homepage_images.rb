require 'refinery'

module Refinery
  module HomepageImages
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "homepage_images"
          plugin.activity = {:class => HomepageImage,}
        end
      end
    end
  end
end
