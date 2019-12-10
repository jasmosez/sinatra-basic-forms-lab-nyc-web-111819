require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  # NEW action
  get '/new' do
    erb :create_puppy
  end

  # CREATE action
  post '/puppy' do
    @puppy = Puppy.new(params)
    # binding.pry
    erb :display_puppy
  end

  # SHOW action
  # get '/puppy/:id'
  #   binding.pry
  # end
end
