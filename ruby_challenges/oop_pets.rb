class Dogs
	
	attr_accessor :name, :owner
	
	def praise
		return "good dog!"
	end
	
end

#create a new puppy
puppy = Dogs.new
puppy.name = "Addie"
puppy.owner = "Kate"

#tell the world about the puppy
puppy_name = puppy.name
puppy_owner = puppy.owner

puts "#{puppy_name} is a #{puppy.praise} #{puppy_owner} trained her well."

puts puppy.inspect