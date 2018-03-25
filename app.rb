require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:ft-tech-test.sqlite3"

require './models/rating'
class App < Sinatra::Base
  get '/' do
    erb :'ratings/new'
  end

  post '/rating/new' do
    Rating.create(score: params[:score])
    redirect '/'
  end
end
