# myapp.rb
require 'sinatra'

get '/' do
  @title = "Sinatra Application"
  erb :"index"
end