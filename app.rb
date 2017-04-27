require 'sinatra'
require 'sinatra/reloader'
require './lib/contacts'
require 'pry'

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contacts') do
  erb(:contact_list)
end

get('/add_contact') do
  erb(:add_contact_form)
end

get('/contact/:id') do
  erb(:contact_details)
end
