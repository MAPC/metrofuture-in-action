source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg', '0.17.1'
gem 'activerecord-postgis-adapter', '0.6.5'
gem 'has_scope',    '0.5.1'

gem 'rgeo',         '0.3.20'
gem 'rgeo-geojson', '0.2.3'

gem 'haml',         '4.0.5'

gem 'paperclip', '~> 3.0'
# TODO gem 'aws-sdk'

# TODO gem 'rails_admin'
# TODO gem 'cancan'


group :development, :test do
  gem 'rspec-rails',        '2.14.2'
  gem 'capybara',           '1.1.2'
  gem 'factory_girl_rails', '4.4.1'
  gem 'launchy',            '2.4.2'

  # Deploy with Capistrano
  gem 'capistrano',         '~> 2.0'
  gem 'net-ssh',            '2.7.0'
  gem 'net-ssh-gateway',    '1.2.0'
  gem 'capistrano-unicorn', '0.2.0', :require => false
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '3.1.0'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use RABL templates for JSON
gem 'rabl', '0.9.3'
gem 'oj',   '2.7.2'

# Use unicorn as the app server
gem 'unicorn', '0.63.0'
gem 'foreman', '4.8.2'


# To use debugger
# gem 'debugger'
