require 'sinatra'
require_relative 'contact.rb'


get '/' do

  erb :index
end

get '/contacts' do
  @all_contacts = Contact.all
  erb :contacts
end

get '/contacts/new' do
  erb :new
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

  post '/contacts' do
    Contact.create(
      first_name: params[:first_name],
      last_name:  params[:last_name],
      email:      params[:email],
      note:       params[:note]
      )
      redirect to('/contacts')
    end  # params hash is directly connected to the input names you gave in new.erb.




after do
  ActiveRecord::Base.connection.close
end
