require 'sinatra'
require_relative "functions.rb"
# def fav_numbers (fav1, fav2, fav3)
# 	fav1+fav2+fav3
# end

# def age_test(age, result, name, fav1, fav2,fav3)
# 		if age > result
# 		"#{name} your age is #{age} and the sum of your three favorite number's #{fav1}, #{fav2}, #{fav3}, is #{result} and that is less then your age!"
# 	else age < result 
# 		"#{name} your age is #{age} and the sum of your three favorite number's #{fav1}, #{fav2}, #{fav3}, is #{result} and that is greater then your age!"
# 	end
# end

get "/" do 
	erb :get_name
end

post '/name' do
  name = params[:user_name]
  redirect "/age?users_name=" +name
end

get "/age" do
	name = params[:users_name]
	erb :get_age, :locals => {:your_name => name}
end
post "/age" do
	age = params[:user_age]
	name = params[:user_name]
	redirect "/numbers?user_age=#{age}&user_name=#{name}"
end

get "/numbers" do
	age = params[:user_age]
	name = params[:user_name]
	erb :numbers, :locals => {:your_age => age, :your_name => name}
end

post "/number" do
	age = params[:user_age].to_i
	name = params[:user_name]
	fav1 = params[:fav1].to_i
	fav2 = params[:fav2].to_i
	fav3 = params[:fav3].to_i
	# my_addition(fav1,fav2,fav3)
	result = my_addition(fav1, fav2, fav3)
	age_test(age,result,name,fav1,fav2,fav3)

	# result = fav1+fav2+fav3
	
	# "#{name} your age is #{age} the sum of your three favorite number's #{fav1}, #{fav2}, #{fav3} are #{result} and that is#{age_test} then your age!"
	# if age > result
	# 	"#{name} your age is #{age} and the sum of your three favorite number's #{fav1}, #{fav2}, #{fav3}, is #{result} and that is less then your age!"
	# else age < result 
	# 	"#{name} your age is #{age} and the sum of your three favorite number's #{fav1}, #{fav2}, #{fav3}, is #{result} and that is greater then your age!"
	# end
end



