# Magic 8-Ball Script?

# Ask the user to input an answer to this question
puts "Welcome to the Magic 8-Ball, where your hopes may (or may not) come true. Ask, and the 8-Ball will tell you: Yes? No? Maybe so? Go ahead, try by asking below."
hopes = gets.chomp

# Magic 8-Ball Possible Answers
ball_answers = ["It is certain", "It is decidedly so", "Without a doubt", "Yes, definitely", "You may not rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply is hazy. Try again", "Ask again later", "Better not tell you now", "Cannot predict now","Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful"]

# Provide random answer using rand argument
ball_answer = ball_answers[rand(0..19)]

# Twilio REST API (Ruby)
require 'rubygems'
require 'twilio-ruby'

account_sid = "AC98ff33d9be4b938e505a37322f03fb63" # Your Account SID from www.twilio.com/console
auth_token = "0465a0778e9ff5b8fd11784baa90a61e"   # Your Auth Token from www.twilio.com/console

@client = Twilio::REST::Client.new account_sid, auth_token
message = @client.account.messages.create(
    :from => "+15108172460",  # Replace with your Twilio number
    :to => "+15102588634",    # Replace with your phone number    
    :body => "You said, '#{hopes}'. I say to you, '#{ball_answer}.'"
)
    
puts message.to

