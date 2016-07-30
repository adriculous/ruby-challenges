puts "Hello there! Please introduce yourself."
name = gets.chomp

puts "#{name.capitalize}, is your day good or bad?"

day = ""
day = gets.chomp

def day(name,day)
     x = "good"
     y = "bad"
     if day == x
          puts "#{name.capitalize}, continue having a good day!"
     else day == y
          puts "#{name.capitalize}, there is always tomorrow!"
     end
end

day(name,day)