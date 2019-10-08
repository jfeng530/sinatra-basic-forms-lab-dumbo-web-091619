require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end 
  
  get '/new' do
    erb :create_puppy
  end 
  
  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:age]
    new_pup = Puppy.new(@name, @breed, @months_old)
  end

end
