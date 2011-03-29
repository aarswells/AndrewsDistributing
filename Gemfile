source 'http://rubygems.org'

gem 'rails', '3.0.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

# REFINERY CMS ================================================================

# Specify the Refinery CMS core:
gem 'refinerycms',              '~> 0.9.8.9'

# Specify additional Refinery CMS Engines here (all optional):
gem 'refinerycms-inquiries',    '~> 0.9.9.9'
# gem 'refinerycms-news',       '~> 0.9.9'
# gem 'refinerycms-portfolio',  '~> 0.9.8'
# gem 'refinerycms-theming',    '~> 0.9.8'

# Add i18n support (optional, you can remove this if you really want to).
gem 'refinerycms-i18n',         '~> 0.9.8.12'

# Figure out how to get RMagick:
rmagick_options = {:require => false}
rmagick_options.update({
  :git => 'git://github.com/refinerycms/rmagick.git',
  :branch => 'windows'
}) if Bundler::WINDOWS

# Specify a version of RMagick that works in your environment:
gem 'rmagick',                  '~> 2.12.0', rmagick_options

# END REFINERY CMS ============================================================

# USER DEFINED

# END USER DEFINED

gem 'refinerycms-managements', '1.0', :path => 'vendor/engines', :require => 'managements'
gem 'refinerycms-brewers', '1.0', :path => 'vendor/engines', :require => 'brewers'
gem 'refinerycms-beer_brands', '1.0', :path => 'vendor/engines', :require => 'beer_brands'
gem 'refinerycms-events', '1.0', :path => 'vendor/engines', :require => 'events'
gem 'refinerycms-portfolio_images', '1.0', :path => 'vendor/engines', :require => 'portfolio_images'
gem 'refinerycms-logos', '1.0', :path => 'vendor/engines', :require => 'logos'
gem 'refinerycms-donation_requests', '1.0', :path => 'vendor/engines', :require => 'donation_requests'
gem 'refinerycms-regions', '1.0', :path => 'vendor/engines', :require => 'regions'
gem 'refinerycms-homepage_images', '1.0', :path => 'vendor/engines', :require => 'homepage_images'
gem 'refinerycms-whats_new_stories', '1.0', :path => 'vendor/engines', :require => 'whats_new_stories'
gem 'refinerycms-for_retailers', '1.0', :path => 'vendor/engines', :require => 'for_retailers'
gem 'refinerycms-for_brewers', '1.0', :path => 'vendor/engines', :require => 'for_brewers'