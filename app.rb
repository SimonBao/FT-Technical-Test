require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base
  get '/' do
    erb :'ratings/new'
  end
end
