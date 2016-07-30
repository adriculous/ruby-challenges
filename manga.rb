# Doing some OOP (object oriented programming) where we can create our own objects and define them. I'll be using manga information as my example.

class Manga
     
     attr_accessor :title, :mangaka, :genre
     
     def about_manga
          return "A good #{@genre} manga that I recommend for everyone to read is #{@mangaka}'s #{@title}."
     end
end
     
my_manga = Manga.new
my_manga.title = 'Cardcaptor Sakura'
my_manga.mangaka = 'CLAMP'
my_manga.genre = 'adventure'
          
puts my_manga.about_manga