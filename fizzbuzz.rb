# This is the FizzBuzz script, where there will be "Fizz", "Buzz", and "FizzBuzz" that would appear in every 3 numbers, 5 numbers, or the remainders of 3 or 5. I don't think I make sense.

num = 0

while num < 101
     if num%3 == 0 && num%5 == 0
          puts "FizzBuzz"
     elsif num%3 == 0
          puts "Fizz"
     elsif num%5 == 0
          puts "Buzz"
     else
          puts num
     end
     
     num+=1
end