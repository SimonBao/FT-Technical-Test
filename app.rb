require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:ft-tech-test.sqlite3"

require './models/rating'
class App < Sinatra::Base

  get '/' do
    redirect '/rating/new'
  end

  get '/rating' do
    @ratings = Rating.all()
    erb :'ratings/ratings'
  end

  post '/rating' do
    Rating.create(score: params[:score])
    redirect '/'
  end


  get '/rating/new' do
    erb :'ratings/new'
  end

end
