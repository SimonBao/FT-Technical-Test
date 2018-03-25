require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base
  get '/' do
    erb :'ratings/new'
  end

  get '/rating/new' do
    Rating.create(rating: params[:rating])
    redirect '/'
  end
end
