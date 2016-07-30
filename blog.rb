# This is an actual blog script, built by Ruby.

class Blog
     
     @@all_posts = []
     @@num_posts = 0
     
     def self.all
          @@all_posts
     end
     
     def self.add(item)
          @@all_posts << item
          @@num_posts += 1
     end
     
     def self.postit
          @@all_posts.each do |post|
               puts "Title:\n #{post.title}"
               puts "Content:\n #{post.content}"
               puts "Date Published:\n #{post.date_created}"
          end
     end
     
end

class Post < Blog
     def self.build
          post = new
          puts "Give your new blog post a title:"
          post.title = gets.chomp
          puts "Start writing your content:"
          post.content = gets.chomp
          post.date_created = Time.now
          post.save
          puts "Write another post? Y or N?"
          build if gets.chomp.downcase == 'y'
     end
     
     def title
          @title
     end
     
     def title=(title)
          @title = title
     end
     
     def date_created
          @date_created
     end
     
     def date_created=(date_created)
          @date_created = date_created
     end
     
     def content
          @content
     end
     
     def content=(content)
          @content = content
     end
     
     def save
          Post.add(self)
     end
     
end

Post.build
all_posts = Post.all
puts all_posts.inspect
Post.postit