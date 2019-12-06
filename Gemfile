source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.12'
gem 'nokogiri', '~> 1.10', '>= 1.10.4'
gem 'mail', '~> 2.7', '>= 2.7.1'
gem 'turbolinks'

group :development, :test do
  gem 'rspec-rails', '~> 3.8'
end

group :development do
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'pry-rails'
end

group :test do
  gem 'shoulda-matchers', '4.0.0.rc1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
