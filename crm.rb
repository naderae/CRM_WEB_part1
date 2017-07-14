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

get '/contacts/:id' do
  # params[:id] contains the id from the URL
  @contact = Contact.find_by({id: params[:id].to_i})
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

# contact_id = params[:id] # dynamic part of URL is stored in a hash called params, that takes a key which is the id of the contact. remember: hash_name[:key] = value
  # @contact = Contact.find_by({id:contact_id.to_i}) # ==> here, we just pass in the key-value pair for find_by to locate it, and save it as @contact.




after do
  ActiveRecord::Base.connection.close
end
