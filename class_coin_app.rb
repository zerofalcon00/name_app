require "sinatra"
require_relative "coin_changer.rb"

get "/" do 
	erb :class_get_change
end

post "/get_change" do 
	input_cents = params[:cents].to_i
	returned_cents = generate_change(input_cents)
	"Your change is #{returned_cents}"
end
