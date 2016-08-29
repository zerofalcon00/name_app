require "sinatra"	
require_relative "coin_changer.rb"

get "/" do
	erb :ask_change
end

post "/cents" do 
	change_value = params[:change]
 	redirect "/change?change=" + change_value
end

get "/change" do
	change_value = params[:change]
	change_value = change_value.to_i
	returned_change = generate_change(change_value)
	erb :change_first, :locals => {:coins => returned_change}
end

# post "/change" do
# 	cent = params[:change]
# 	generate_change(cents)
# end