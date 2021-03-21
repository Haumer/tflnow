source 'https://rubygems.org'
ruby '2.6.5'

gem 'http'
gem 'groupdate'
gem 'view_component'
gem 'rails_admin', '~> 2.0'
gem 'bootsnap', require: false
gem 'jbuilder', '~> 2.0'
gem 'pg', '~> 0.21'
gem 'puma'
gem 'rails', '6.0.0'
gem 'redis'
gem 'devise'
gem 'sidekiq'
gem 'sidekiq-failures', '~> 1.0'

gem 'autoprefixer-rails'
gem 'font-awesome-sass', '~> 5.6.1'
gem 'sassc-rails'
gem 'simple_form'
gem 'uglifier'
gem 'webpacker'

group :development do
  gem 'web-console', '>= 3.3.0'
end

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'dotenv-rails'
  gem 'capybara'
  gem 'webdrivers', '~> 4.0'
  gem 'launchy'
  %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
    gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
  end
  gem 'shoulda-matchers'
end
