
require "sinatra"
require_relative "coin_changer.rb"

get '/' do
erb :index
end

post '/index' do

radio = params[:radio]	
    
    if radio == "yes"
    	redirect '/change'
	end

	if radio == "no"
		redirect '/index'		
	end
    
end

get'/change' do
erb :change
end

post'/change' do

	cents = params[:cents_given]
	coins_returned = params[:answer]
	coins_returned = coin_changer(cents)
redirect '/total?cents_given=' + cents + '&answer=' + coins_returned
    
end

get'/total' do
	cents = params[:cents_given]
	coins_returned = params[:answer]
erb :total, :locals => {cents:cents, coins_returned:coins_returned}
end



