source 'https://rails-assets.org'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.4'

gem 'pg', platform: :mri

gem 'activerecord', '~> 4.2.4'
gem 'activerecord-jdbc-adapter', '~> 1.3', platform: :jruby
gem 'jdbc-postgres', platform: :jruby

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :mri
gem 'therubyrhino', platforms: :jruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# if you require 'sinatra' you get the DSL extended to Object
gem 'sinatra', :require => nil
# Simple, efficient background processing for Ruby.
gem 'sidekiq', "2.17.8"

# Thread-ed Background Workers on top of JRuby::Rack
gem 'jruby-rack-worker', :platform => :jruby

# warbler
gem "warbler"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Official Sass port of Bootstrap 2 and 3.
gem 'bootstrap-sass'

# Generates javascript file that defines all Rails named routes as javascript helpers
gem "js-routes"

# AngularJS
gem 'rails-assets-angular'
gem 'rails-assets-angular-moment'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0', platform: :mri

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
