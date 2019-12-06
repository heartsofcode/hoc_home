source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use sqlite3 as the database for Active Record
# Use Puma as the app server
gem 'puma', '~> 3.12'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '>= 3.4.1'
gem 'autoprefixer-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'html2haml'
gem 'haml-rails'
gem 'friendly_id'
gem 'devise', ">= 4.6.0"
gem 'jquery-rails'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem "simple_calendar", "~> 2.0"
gem "recurring_select", github: "RundownApp/recurring_select"

# To extract the image dimensions
gem 'fastimage', '~> 2.1.4'
# Required for image versioning and includes helpers for ImageMagick
gem 'image_processing', '~> 1.7.1'
# Required for image versioning
gem 'mini_magick', '~> 4.9.2'
# Shrine :) for io objects
gem 'shrine', '~> 2.13.0'

gem 'rb-readline', '0.5.3'

gem 'redcarpet'
gem 'md_emoji'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13.0'
  gem 'mailcatcher', '~> 0.2.4'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rails_real_favicon'
end

group :production do
  gem 'unicorn', '~> 5.4.1'
  gem 'mysql2', '~> 0.5.2'
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap', '>= 4.3.1'
