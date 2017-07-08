def calc_method(int1,str,int2)
	result = 0

		if str == "+"
			result = int1 + int2
		elsif str == "-"
			result = int1 - int2
		elsif str == "*"
			result = int1 * int2
		else str == "/"
			result = int1.to_f / int2.to_f
		end

	p result
end

#calc_method(4,"+",4)
#calc_method(4,"-",4)
#calc_method(4,"*",4)
#calc_method(4,"/",4)

input = " "
hash_answer = []
array_counter = []
num_str = "0123456789"
symbol_str = "+-*/"
counter = 0
while input != "done"

	p "What calculation would you like to perform? Enter 'done' when finished"
	input = gets.chomp
	
	if !input.include?(num_str) || !input.include?(symbol_str)
			p "Please enter a valid calculation to perform"
	

	else
	input.split(' ')
	int1 = input[0].to_i
	str = input[2]
	int2 = input[4].to_i
	this_key = "#{int1} + #{str} + #{int2}"
	this_value = calc_method(int1,str,int2)
		hash_answer << {this_key => this_value}
		

	end
	counter += 1
end



p "#{counter} calculations performed"

p hash_answer.each do |key,value|
	p "#{key}" " = " "#{value}"
end







	



