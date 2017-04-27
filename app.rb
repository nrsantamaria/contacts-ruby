require 'sinatra'
require 'sinatra/reloader'
require './lib/contacts'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contacts') do
  @name = params.fetch('contact-name')
  new_contact = Contact.new(@name)
  new_contact.save
  @contacts = Contact.all
  erb(:contact_list)
end

get('/contacts_clear') do
  Contact.clear
  @contacts = Contact.all
  erb(:contact_list)
end

get('/add_contact') do
  erb(:add_contact_form)
end

get('/contact/:id') do
  erb(:contact_details)
end
