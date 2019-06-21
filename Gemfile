source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.3"

gem "bootsnap", ">= 1.1.0", require: false
gem "config"
gem "figaro"
gem "mysql2"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.3"
gem "rubocop", "~> 0.71.0"

group :development, :test do
  gem "annotate"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "faker"
end

group :test do
  gem "database_cleaner"
  gem "factory_bot_rails", require: false
  gem "rspec-collection_matchers"
  gem "rspec_junit_formatter"
  gem "rspec-rails"
  gem "shoulda-matchers"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
