# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-26, 4-27
# => numbergame 8 created w/help from Joey at 8th Light
# => to include use of instance variable and methoed for get_guess

class NumberGame

  def initialize
    @guess = 0
  end  

  def get_guess                   
    @guess = gets.chomp.to_i
  end 

  def game_run
      puts "Who do I have the pleasure of speaking to?"		# Added feature 4-16
      name = gets.chomp
      name.capitalize! # => added 4-23

      min = 50
      max = 75  
      r_num = min + rand(max - min + 1) 

      puts "Nice to meet you, #{ name }! Try to guess a number between #{ min } and #{ max }!" 
    	get_guess
      
      still_guessing = true 
    	while still_guessing		

        if @guess == r_num 
    			puts "Great guess! You're right, #{ name }!!"  
    	  	still_guessing = false
         	puts "Thanks so much for playing!"
          gets     
        elsif (@guess > max) || (@guess < min)    # => logic added 4-27
          puts "You don't follow directions very well, do you #{ name }?"
          puts "Between #{ min } and #{ max }, please?!"
          get_guess   
  			
        elsif @guess < r_num
          puts "It's higher, #{ name }. C'mon!!! Guess again."
          get_guess 

        elsif @guess > r_num
  				puts "Really, #{ name }?? It's lower. How long must this go on??"
  				get_guess 
  			end
      end	
  end  
end

new_game = NumberGame.new
new_game.game_run
	
  