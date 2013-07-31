# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23

class NumberGame

puts "Who do I have the pleasure of speaking to?"   # Added feature 4-16
  name = gets.chomp
  name.capitalize! # => added 4-23
  
r_num = rand( 99 ) + 1 # Realized this means Random number bewtween ZERO and ten, so line 10 is inaccurate.
min = 1
max = 100
still_guessing = true

    puts "Nice to meet you, #{ name }! Please give me a number between #{ min } and #{ max }." # corrected to say between "0 and 10" 4-21
    guess = gets.chomp
    
    while still_guessing    # => comment added 4-18. I'm sure there's a better way to do this,
                            # => Joey, but it's the example he gave.
                            # => 'still_guessing' replaces 'running' 4-21

      if guess.to_i == r_num # => syntax changed to put 'if' statement all on one line
        puts "Great guess! You're right, #{ name }!!"
        still_guessing = false
      
      elsif guess.to_i < r_num
        puts "It's higher, #{ name }. C'mon!!! Guess again."
        guess = gets.chomp  # to avoid infinite loop!!!
      
      elsif guess.to_i > 10                                                  # => This elsif added 4-23
         puts "You don't follow directions very well, do you #{ name }?"
         puts "Between 0 and 10, please?!"
         guess = gets.chomp   
      
      elsif guess.to_i > r_num
        puts "Really, #{ name }?? It's lower. How long must this go on??"
        guess = gets.chomp  # same as line 23
      end
  end   
end  
  
  puts "Thanks soooo much for playing!"
  gets
  