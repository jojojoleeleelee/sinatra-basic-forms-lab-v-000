require_relative 'config/environment'
require './models/puppy.rb'
class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/display_puppy' do
    @pup = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
end
