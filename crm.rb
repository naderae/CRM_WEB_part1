require 'sinatra'
require_relative 'contact.rb'


get '/' do
  erb :index
end

get '/contacts' do
  @all_contacts = Contact.all
  erb :contacts
end

get '/about' do
  erb :about
end

after do
  ActiveRecord::Base.connection.close
end
