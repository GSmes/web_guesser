require 'sinatra'
require 'sinatra/reloader'

secret_number = rand(100)

get '/' do
  p "Why, hello there! <br> The SECRET NUMBER is #{secret_number}"
end
