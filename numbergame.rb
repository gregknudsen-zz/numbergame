# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21

puts "Who do I have the pleasure of speaking to?"		# Added feature 4-16
  name = gets.chomp
  
r_num = rand( 10 )  # Realized this means Random number bewtween ZERO and ten, so line 10 is inaccurate.
running = true

		puts "Nice to meet you, #{ name }! Please give me a number between 0 and 10." # corrected to say between "0 and 10" 4-21
  	guess = gets.chomp
  	
  	while still_guessing		# comment added 4-18. I'm sure there's a better way to do this,
										        # Joey, but it's the example he gave.
                            # 'still_guessing' added 4-21
  	
  		if
  			guess.to_i == r_num
  			puts "Great guess! You're right, #{ name }!!"
  	  	still_guessing = false
  	  elsif
  	 	 	guess.to_i < r_num
  	 	 	puts "It's higher, #{ name }. C'mon!!! Guess again."
  	 	 	guess = gets.chomp	# to avoid infinite loop!!!
			else
				guess.to_i > r_num
				puts "Really, #{ name }?? It's lower. How long mus this go on??"
				guess = gets.chomp  #	same as line 23
			end
	end		
	
	puts "Thanks soooo much for playing!"
	gets
  