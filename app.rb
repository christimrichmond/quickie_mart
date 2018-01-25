require "sinatra"
require_relative "quickie_mart.rb"

get '/' do
	erb :index
end

post '/item_choice' do
	item_name = params[:chips]
	item_name = params[:candy]
	item_name = params[:gum]
	redirect '/result?item_name=' + item_name
end

get '/result' do
	chips = params[:chips]
    candy = params[:candy]
    gum = params[:gum]
    erb :results, :locals => {:chips => chips, :candy => candy, :gum => gum}
end

post '/collection' do
    payment = params[:payment]
    stotal = params[:stotal]
    total = params[:total]
    chips = params[:chips]
    candy = params[:candy]
    gum = params[:gum]
    redirect '/checkout?payment=' + payment + '&stotal=' + stotal + '&total=' + total + '&chips=' + chips + '&candy=' + candy + '&gum=' + gum
end

get '/final' do
    payment = params[:payment]  
    stotal = params[:stotal]
    total = params[:total]
	chips = params[:chips]
    candy = params[:candy]
    gum = params[:gum]
    erb :checkout, :locals => {:payment => payment, :stotal => stotal, :total => total, :chips => chips, :candy => candy, :gum => gum}
end
