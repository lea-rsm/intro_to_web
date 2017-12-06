require 'sinatra'
set :session_secret, 'super secret'

get '/secret' do
  'Hello world!'
end

get '/' do
  'Charles keeps talking about the Manthing'
end

get '/random-cat' do
  @name = %w(Léa Cal Charles).sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:form)

end
