require 'sinatra'
require 'sinatra/reloader'
require './lib/contacts'
require 'pry'

also_reload('lib/**/*.rb')

# initial rout to index
get('/') do
  erb(:index)
end

# create a new contact by saving to array, then route back to contact list
get('/contacts_after_add') do
  @name = params.fetch('contact-name')
  new_contact = Contact.new(@name)
  new_contact.save
  @contacts = Contact.all
  erb(:contact_list)
end

# route to contact list
get('/contacts') do
  @contacts = Contact.all
  erb(:contact_list)
end

# clear contact list by emptying array, then route to contact list (should be empty)
get('/contacts_clear') do
  Contact.clear
  @contacts = Contact.all
  erb(:contact_list)
end

# route to creating a new contact, via form
get('/add_contact') do
  erb(:add_contact_form)
end

# dispkays an individual contact, by dynamically pulling the 'id' from URL and passing into find method
get('/contact/:id') do
  # separate note: the colon in front of 'id' ONLY exists here, in the path above
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contact_details)
end
get('/contact/:id/add') do
  @contact = Contact.find(params.fetch('id').to_i())
  email = params.fetch('contact-email')
  if email != ""
    @email = Email.new(email)
    @contact.add_email(@email)
  end
  phone_number = params.fetch('contact-phone')
  if phone_number != ""
    @phone_number = PhoneNumber.new(phone_number)
    @contact.add_phone_number(@phone_number)
  end
  address = params.fetch('contact-address')
  if address != ""
    @address = Address.new(address)
    @contact.add_address(@address)
  end
  erb(:contact_details)
end

















  #end
