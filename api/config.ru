require './config/environment'
require 'rack/cors'
if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins 'localhost:3000' # allow requests from ALL frontend origins (if you deploy your application, change this to only allow requests from YOUR frontend origin)
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end


# Parse JSON from the request body into the params hash

# use Rack::JSONBodyParser
use DocumentController
run ApplicationController
