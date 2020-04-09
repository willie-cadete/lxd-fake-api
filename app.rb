require 'sinatra'
require 'json'

set :port, 3000
set :bind, '0.0.0.0'

get '/1.0/containers' do
  content_type :json
  File.open('mock/containers.json').read
end

get '/1.0/containers/:name' do
  content_type :json
  File.open("mock/#{params['name']}_info.json").read
end

get '/1.0/containers/:name/state' do
  content_type :json
  File.open("mock/#{params['name']}_state.json").read
end