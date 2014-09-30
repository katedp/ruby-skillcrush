if 1+1 ==2
	puts "1 and 1 DOES equal 2"
end

puts "What's your name? "
my_name = gets
my_name = my_name.chomp
if my_name == 'Skillcrush' then
	puts "Hellooooo, Skillcrush!"
else 
	puts "Oops, I thought your name was Skillcrush! Sorry about that #{my_name}"
end

puts "What's your favorite color? "
fav_color = gets
fav_color = fav_color.chomp
if (fav_color == 'red')
	puts "red like fire!"
elsif (fav_color == 'orange')
	puts "orange like, um, an orange?"
elsif (fav_color == 'yellow')
	puts "Yellow daffodils are so pretty in the spring!"
elsif (fav_color =='green')
	puts "Have you been to the Emerald City?"
elsif (fav_color == 'blue')
	puts "Blue like the sky!"
elsif (fav_color == 'purple')
	puts "Purple plums are so tasty."
else
	puts "Hmm, I don't know that color. I'm limited to the rainbow."
end