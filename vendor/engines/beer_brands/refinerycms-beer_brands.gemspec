

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-beer_brands'
  s.version           = '1.0'
  s.description       = 'Ruby on Rails Beer Brands engine for Refinery CMS'
  s.date              = '2011-01-14'
  s.summary           = 'Ruby on Rails Beer Brands engine for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir['lib/**/*', 'config/**/*', 'app/**/*']
end
