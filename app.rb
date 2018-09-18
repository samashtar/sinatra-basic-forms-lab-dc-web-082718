require_relative 'config/environment'

class App < Sinatra::Base

get '/' do
erb :index
end

get '/new' do
erb :create_puppy
end

post '/' do
  @puppyname = params[:name]
  @puppyage =params[:age]
  @puppybreed =params[:breed]
  binding.pry
  erb :display_puppy
end



end
