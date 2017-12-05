require 'sinatra'
set :session_secret, 'super secret'

get '/secret' do
  'Hello world!'
end

get '/' do
  'Charles keeps talking about the Manthing'
end

get '/cat' do
erb(:index)
end
