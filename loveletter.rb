# This is a love letter script made using Ruby's loops & iterators. Ah, love! <3

puts "Do you love me? Y/N?"
answer = gets.chomp.downcase

while (answer == "y")
     puts "Really? Do you really love me? Because I love you!"
     answer = gets.chomp.downcase
end