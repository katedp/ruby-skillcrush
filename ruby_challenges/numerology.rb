#Convert the birthdate into a number
def find_magic_number (birthdate)
	magic_number = 0
	i = 0

	while i < 8 do
		magic_number += birthdate[i].to_i
		i +=1
	end

	#if that number is two digits, add them together to get a 1 digit number.
	check_magic_number = 0
	str_magic_number = "0"

	if (magic_number >= 10)
		str_magic_number = magic_number.to_s
		check_magic_number += str_magic_number[0].to_i
		check_magic_number += str_magic_number[1].to_i	
	else
		check_magic_number = magic_number
	end
	
	#make sure *that* number is only 1 digit
	final_magic_number = 0
	if (check_magic_number >= 10)
		str_magic_number = check_magic_number.to_s
		final_magic_number += str_magic_number[0].to_i
		final_magic_number += str_magic_number[1].to_i	
	else
		final_magic_number = check_magic_number
	end
	
	puts "\nYour numerology number is #{final_magic_number}.\n"
	return final_magic_number

end

def magic_number_meaning (final_magic_number)
	case final_magic_number
	when 1
		puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.\n\n"
	when 2
		puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.\n\n"
	when 3
		puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Threes enjoy life and have a good sense of humor. Ruled by Jupiter.\n\n"
	when 4
		puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.\n\n"
	when 5
		puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.\n\n"
	when 6
		puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.\n\n"
	when 7
		puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.\n\n"
	when 8
		puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.\n\n"
	when 9
		puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars.\n\n"
	else
		puts "hmmmm. something seems to have gone wrong. try again!\n\n"
	end
end

#intro
puts "Welcome to Numerology(tm)! Give us your birthdate and we'll tell you all about yourself!\n"

#Step 1: get the birthdate
puts "What's your birthdate (mmddyyyy)? "
birthdate = gets.chomp

#Step 2: get the magic number and the message
birth_number = find_magic_number birthdate
message = magic_number_meaning birth_number