def determine_current_hour
		current_time = Time.new
		current_hour = current_time.hour
end

def get_name
	puts "Hi there! What's your name?"
	first_name = gets.chomp
end

def greeting
		name = get_name
		current_hour = determine_current_hour
		if(current_hour > 3 && current_hour < 12)
				time = "morning"
		elsif(current_hour > 12 && current_hour < 18)
				time = "afternoon"
		elsif(current_hour > 18 || current_hour < 2)
				time = "evening"
		end
		puts "Good #{time}, #{name.capitalize}!"
end

greeting