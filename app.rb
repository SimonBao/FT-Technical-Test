require 'sinatra'
require 'sinatra/activerecord'

class App < Sinatra::Base
  get '/' do
    "Hello World!"
  end
end
