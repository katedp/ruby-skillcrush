puts "What's the weather like there? "
weather = gets
weather = weather.chomp

case weather
when 'sunny'
	puts "Make sure you're wearing sunscreen!\n"
when 'rainy'
	puts "Get yer wellies!\n"
when 'snowy'
	puts "Yay! Time for snowboots!\n"
when 'foggy'
	puts "Sweatshirts are your friend today.\n"
else
	puts "I can't tell you how to dress for that! \n"
end