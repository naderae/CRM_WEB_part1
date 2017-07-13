require 'sinatra'
require_relative 'contact.rb'


get '/' do
  erb :index
end
