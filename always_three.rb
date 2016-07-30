# You are now at the Always 3 script. It's in Ruby, girl. Hello and welcome!

# We're using custom methods now, so make something up.

def always_three(number)
     (((number + 5) * 2 - 4) / 2 - number)
end

# Ask the person (user) to provide a number. Any number.
puts "Please, give me your number, I mean A number!"

# Hint: use 'gets' method, convert to an integer using 'to_i', make it a variable
i_number = gets.to_i

puts "You know what it is! " + always_three(i_number).to_s + " of course!"