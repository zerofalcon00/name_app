# def fav_numbers (fav1, fav2, fav3)
# 	fav1+fav2+fav3
# end

def age_test(age, result, name, fav1, fav2,fav3)
	if age > result
		"#{name} your age is #{age} and the sum of your three favorite number's #{fav1}, #{fav2}, #{fav3}, is #{result} and that is less then your age!"
	else
		"#{name} your age is #{age} and the sum of your three favorite number's #{fav1}, #{fav2}, #{fav3}, is #{result} and that is greater then your age!"
	end
end

def my_addition(*numbers)
   result = 0
   numbers.each do |number|
   	result += number
   end
   result
end

