require 'refinery'

module Refinery
  module DonationRequests
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "donation_requests"
          plugin.activity = {:class => DonationRequest,
          :title => 'event_region'
        }
        end
      end
    end
  end
end
