
require "sinatra"
require_relative "quickie_mart.rb"

get '/' do
	erb :index
end

post '/item_choice' do
	item_name = params[:item_name]
	redirect '/result?item_name=' + item_name
end

get '/result' do
	item_name = params[:item_name]
    erb :checkout, :locals => {:item_name => item_name}
end
