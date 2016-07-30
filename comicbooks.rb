class Comics
     def set_title=(title)
          @title = title
     end
     
     def get_title
          return @title
     end
     
     def set_author=(author)
          @author = author
     end
     
     def get_author
          return @author
     end
end

class Marvel < Comics
     def tropes
          return "superheroes"
     end
end

class Manga < Comics
     def ages
          return "all ages"
     end
end
     
class Manhwa < Comics
     def same
          return "almost similar as manga"
     end
end

my_marvel = Marvel.new
my_marvel.set_title="Spider-Man"
marvelname = my_marvel.get_title

my_manga = Manga.new
my_manga.set_title="Cardcaptor Sakura"
manganame = my_manga.get_title

my_manhwa = Manhwa.new
my_manhwa.set_title="Chocolat"
manhwaname = my_manhwa.get_title

puts "I have three types of comic books: #{marvelname} is about #{my_marvel.tropes}, #{manganame} is enjoyable for #{my_manga.ages}, and #{manhwaname} is any shoujo #{my_manhwa.same}."

puts my_marvel.inspect
puts my_manga.inspect
puts my_manhwa.inspect