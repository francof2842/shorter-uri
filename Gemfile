source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'
gem 'rails', '~> 6.1.1'
gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 5.0'

gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'faker'
  gem 'rspec-rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :test do
  gem 'factory_bot_rails', '~> 6.1'
end

group :development do

  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
