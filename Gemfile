source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.3'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

# Active Model Serializers more info at https://github.com/rails-api/active_model_serializers
gem 'active_model_serializers', require: true
# devise more info at https://github.com/plataformatec/devise
gem 'devise'
# bootstrap more info at https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap-sass'
# figaro more info at https://github.com/laserlemon/figaro
gem 'figaro'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
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

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # rspec rails more info at https://github.com/rspec/rspec-rails
  gem 'rspec-rails'
  # shoulda more info at https://github.com/thoughtbot/shoulda
  gem 'shoulda'
  # faker more info at https://github.com/stympy/faker
  gem 'faker'
  # factory girl rails more info at https://github.com/thoughtbot/factory_girl_rails
  gem 'factory_girl_rails'
  # pry rails more info at https://github.com/rweng/pry-rails
  gem 'pry-rails'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
