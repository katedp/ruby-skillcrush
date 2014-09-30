class Site
	
	attr_accessor :title, :post, :author
	
end

class Post < Site
	
	def initialize
		current_time = Time.now
	end
	
end

def make_blog_post
	my_blog_post=Post.new
	puts "Title: "
	my_blog_post.title = gets.chomp
	puts "Content: "
	my_blog_post.post = gets.chomp
	puts "Author: "
	my_blog_post.author = gets.chomp
end


# user enters in all content
# while the user wants to write a blog post, get the info

puts "Do you want to create a blog post? (y/n) "
answer = gets.chomp.downcase
new_post = ""
all_blog_posts = {}

while answer == "y" do
	all_blog_posts << new_post.make_blog_post
	puts "Do you want to create a blog post? (y/n) "
	answer = gets.chomp.downcase
end

# now display all the posts

all_blog_posts.each do |new_post|
	puts new_post.title
	puts new_post.author
	puts new_post.post
	puts new_post.current_time
end
