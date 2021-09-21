source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.3'

gem 'awesome_print'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'devise'
gem 'jbuilder', '~> 2.7'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sass-rails', '>= 6'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'web-console', '>= 4.1.0'

  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :development, :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'rubocop-rails'
  gem 'rubocop-rspec', require: false
  gem 'shoulda-matchers', '~> 5.0'
end

gem 'acts-as-taggable-on', '~> 7.0'
gem 'simple_form'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
