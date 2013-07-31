# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-27
# => numbergame6 created to have the user create the minimum and maximum numbers 4-30

class NumberGame

puts "Who do I have the pleasure of speaking to?"   # Added feature 4-16
  name = gets.chomp
  name.capitalize! # => added 4-23

puts "Very nice to meet you, #{ name }. Today, you'll be choosing 2 numbers. Then I will create
      a random number in between the 2 you just selected. Then, you'll get to guess it!! Sound like fun? Good."
puts "Could you provide me with the lower of the 2 numbers, please?"      
min = gets.chomp.to_i
puts "And the upper?"
max = gets.chomp.to_i

r_num = min + rand(max - min + 1) # => algorithm created by Steve M. 4-24


puts "Great! Now, please guess a number between #{ min } and #{ max }." 
  guess = gets.chomp
    
    still_guessing = true   
    while still_guessing    # => comment added 4-18. I'm sure there's a better way to do this,
                            # => Joey, but it's the example he gave.
                            # => 'still_guessing' replaces 'running' 4-21

      if guess.to_i == r_num # => syntax changed to put 'if' statement all on one line
        puts "Great guess! You're right, #{ name }!!"
        still_guessing = false
      
      elsif ( guess.to_i > max ) || ( guess.to_i < min )     # => comparator added 4-27
        puts "You don't follow directions very well, do you #{ name }?"
        puts "Between #{ min } and #{ max }, please?!"
        guess = gets.chomp   

       elsif guess.to_i < r_num
        puts "It's higher, #{ name }. C'mon!!! Guess again."
        guess = gets.chomp  # to avoid infinite loop!!!

      elsif guess.to_i > r_num
        puts "Really, #{ name }?? It's lower. How long must this go on??"
        guess = gets.chomp  # same as line 23
      end
  end   
end  
  
  puts "Thanks so much for playing!"
  gets
  