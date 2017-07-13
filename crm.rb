require_relative 'contact'
require 'sinatra'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/contacts' do
  @contacts = Contact.all
  erb :contacts
end

after do
  ActiveRecord::Base.connection.close
end
