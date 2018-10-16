This is a basic Rails API with Graphiql installed to allow for local testing

Rails APIs do not install Graphiql by default so it takes some jiggery pokery to get it up and running

Basic Set up:

Rails new APPNAME --api

this creates a lighter app but it has limitations

Add:


gem 'graphql'

gem 'graphiql-rails', group: :development
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'`

to the existing Gem file and bundle install


rails g graphql:install

bundle install


Then go on as normal



