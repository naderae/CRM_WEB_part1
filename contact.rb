gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')


class Contact < ActiveRecord::Base

field :first_name, as: :string
field :last_name,  as: :string
field :email,      as: :string
field :note,       as: :text

def full_name
  "#{first_name} #{last_name}"
end
end

Contact.auto_upgrade!

# @@contact_list = []
# @@id = 1

  # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note)
  #   @first_name = first_name
  #   @last_name  = last_name
  #   @email      = email
    # @note       = note
  #   @id         = @@id
  #     @@id += 1
  # end


  # => READERS -----------------------------------------------------------------



  # def first_name
  #   @first_name
  # end
  #
  # def last_name
  #   @last_name
  # end
  #
  # def email
  #   @email
  # end
  #
  # def note
  #   @note
  # end
  #
  # def id
  #   @id
  # end
  # #WRITERS----------------------------------------------------------------------
  # def first_name=(first_name)
  #   @first_name = first_name
  # end
  #
  # def last_name=(last_name)
  #   @last_name = last_name
  # end
  #
  # def email=(email)
  #   @email = email
  # end
  #
  # def note=(note)
  #   @note = note
  # end

#CLASS METHODS ----------------------------------------------------------------

  # This method should call the initializer,
  # store the newly created contact, and then return it
#   def self.create(first_name, last_name, email, note)
#     new_contact = Contact.new(first_name, last_name, email, note)
#     @@contact_list << new_contact
#     return new_contact
#   end
#
#   # This method should return all of the existing contacts
#   def self.all
#     puts @@contact_list
#   end
#
#   # This method should accept an id as an argument
#   # and return the contact who has that id
#   def self.find(id)
#     @@contact_list.each do |contact|
#       if contact.id == id
#       puts contact.first_name
#       end
#     end
#   end
#
#   def self.find_by (attribute, value)
#     if attribute == 'first_name'
#       @@contact_list.each do |contact|
#         if contact.first_name == value
#         return contact
#         end
#       end
#     end
#
#     if attribute == 'last_name'
#       @@contact_list. each do |contact|
#         if contact.last_name == value
#           retun contact
#         end
#        end
#      end
#     if attribute == 'email'
#       @@contact_list.each do |contact|
#         if contact.email == value
#           return contact
#         end
#       end
#     end
#   end
#
#
#   # This method should delete all of the contacts
#   def self.delete_all
#     @@contact_list.clear
#     puts @@contact_list
#   end
#
#
#
#   #INSTANCE METHODS -----------------------------------------------------------
#
# # This method should allow you to specify
#   # 1. which of the contact's attributes you want to update
#   # 2. the new value for that attribute
#   # and then make the appropriate change to the contact
#   def update(attribute, new_value)
#     if attribute == "first_name"
#       self.first_name= new_value
#     elsif
#        attribute == "last_name"
#       self.last_name = new_value
#     elsif
#       attribute == "email"
#       self.email= new_value
#     elsif
#       attribute == "note"
#       self.note = new_value
#     end
#   end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty

  def full_name
    "#{@first_name} #{@last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  # def delete
  #   @@contact_list.delete(self)
  # end

  # Feel free to add other methods here, if you need them.



Contact.auto_upgrade!




# me = Contact.create("Nader", "abou-ezze", "naderabouezze93@gmail.com", "met at park")
# sister = Contact.create("Rheam", "Abou-Ezze", "rheamabouezze93@gmail.com", "my older sister")
# brother = Contact.create("Marwan", "Abou-Ezze", "marwanabouezze93@gmail.com", "my older brother")
#
# # puts Contact.find(1)
# # puts Contact.find_by("first_name", "Nader")
# # puts Contact.find_by("first_name", "Rheam")
# # puts Contact.all
# # p Contact.delete_all
# # puts Contact.all
# Contact.all
# me.update("first_name", "Zlatan")
# Contact.all
