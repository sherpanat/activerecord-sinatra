require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry'

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/:id' do
  @restaurant = Restaurant.find(params['id'])
  erb :show
end

post '/restaurants' do
  Restaurant.new(
    name: params["name"],
    city: params["city"]
  ).save
  redirect '/'
end
