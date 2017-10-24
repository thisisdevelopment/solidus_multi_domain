source "https://rubygems.org"

gem "solidus", github: "solidusio/solidus", tag: 'v2.3.0'
branch = ENV.fetch('SOLIDUS_BRANCH', 'master')

if branch == 'master' || branch >= "v2.0"
  gem "rails-controller-testing", group: :test
else
  gem "rails", '~> 5.1.4'
  gem "rails_test_params_backport", group: :test
end

gem 'pg'
gem 'mysql2'

group :development, :test do
  gem "pry-rails"
end

gemspec
