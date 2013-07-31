# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-27
# => numbergame7 created (5-2) to add a counter to limit the number of guesses

class NumberGame

puts "Who do I have the pleasure of speaking to?"   
  name = gets.chomp
  name.capitalize! 

puts "Very nice to meet you, #{ name }. Today, you'll be choosing 2 numbers. 
      Then I will create a random number in between the 2 you just selected. 
      Then, you'll get to guess it!! Sound like fun? Good."

puts "Could you provide me with the lower of the 2 numbers, please?"      
min = gets.chomp.to_i
puts "And the upper?"
max = gets.chomp.to_i

r_num = min + rand(max - min + 1) # => algorithm created by Steve M. 4-24


puts "Great! Now, please guess a number between #{ min } and #{ max }." 
  guess = gets.chomp


    
    still_guessing = true   
    while still_guessing    
        
        if guess.to_i == r_num 
        puts "Great guess! You're right, #{ name }!!"
        still_guessing = false
      
      elsif ( guess.to_i > max ) || ( guess.to_i < min )     # => comparator added 4-27
        puts "You don't follow directions very well, do you #{ name }?"
        puts "Between #{ min } and #{ max }, please?!"
        guess = gets.chomp   

      elsif guess.to_i < r_num
        puts "It's higher, #{ name }. C'mon!!! Guess again."
        guess = gets.chomp  

      elsif guess.to_i > r_num
        puts "Really, #{ name }?? It's lower. How long must this go on??"
        guess = gets.chomp  
      end
  end   
end  
  
  puts "Thanks so much for playing!"
  gets
  