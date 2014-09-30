puts "Give me a number, please: "
num_first = gets.to_i

def always_three (num)
	(((2*(num+5))-4)/2)-num
end

puts "The answer is: #{always_three(num_first)}.\n"

