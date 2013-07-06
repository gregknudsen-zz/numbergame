# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-27

class NumberGame

puts "Who do I have the pleasure of speaking to?"		# Added feature 4-16
  name = gets.chomp
  name.capitalize! # => added 4-23

min = 1
max = 10  
r_num = min + rand(max - min + 1) # => algorithm created by Steve M. 4-24


puts "Nice to meet you, #{ name }! Please give me a number between #{ min } and #{ max }." 
  guess = gets.chomp
    
    still_guessing = true  	
  	while still_guessing		# => comment added 4-18. I'm sure there's a better way to do this,
										        # => Joey, but it's the example he gave.
                            # => 'still_guessing' replaces 'running' 4-21

      if guess.to_i == r_num # => syntax changed to put 'if' statement all on one line
  			puts "Great guess! You're right, #{ name }!!"
  	  	still_guessing = false
  	  
      elsif ( guess.to_i > max ) || ( guess.to_i < min )     # => logic added 4-27
        puts "You don't follow directions very well, do you #{ name }?"
        puts "Between #{ min } and #{ max }, please?!"
        guess = gets.chomp   

			 elsif guess.to_i < r_num
        puts "It's higher, #{ name }. C'mon!!! Guess again."
        guess = gets.chomp  # to avoid infinite loop!!!

      elsif guess.to_i > r_num
				puts "Really, #{ name }?? It's lower. How long must this go on??"
				guess = gets.chomp  #	same as line 23
			end
	end		
end  
	
	puts "Thanks so much for playing!"
	gets
  