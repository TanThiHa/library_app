source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'
gem "bcrypt", "~>3.1.12"
gem "bootstrap-sass", "~> 3.3.7"
gem "bootstrap-will_paginate", "~>1.0.0"
gem "carrierwave"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "faker"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "mini_magick", "~> 4.7.0"
gem "mysql2", ">= 0.3.18", "< 0.6.0"
gem "puma", "~> 4.3"
gem "rails", "~> 5.1.7"
gem "ransack"
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "will_paginate", "~>3.1.6"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
