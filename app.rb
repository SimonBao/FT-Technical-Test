require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/json'
require './models/rating'
# Set database to sqlite3 - lightweight db
set :database, 'sqlite3:ft-tech-test.sqlite3'
# App controller
class App < Sinatra::Base
  get '/' do
    redirect '/rating/new'
  end

  get '/rating' do
    @ratings = Rating.all
    erb :'ratings/ratings'
  end

  post '/rating' do
    if params[:score].to_i <= 0
    else
      Rating.create(score: params[:score])
    end
    redirect '/'
  end

  get '/rating/new' do
    erb :'ratings/new'
  end

  get '/api/rating' do
    json Rating.all
  end
end
