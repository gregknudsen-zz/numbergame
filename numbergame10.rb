# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-26, 4-27
# => numbergame 10 created to add option of playing again (mod. 5-5 by GK)
# => along with user input of numbers

class NumberGame

  def initialize
    @guess = 0
    @name = ""
  end  

  def get_guess                   
    @guess = gets.chomp.to_i
  end     

  def introduce  
    puts "Who do I have the pleasure of speaking to?"		# Added feature 4-16
    @name = gets.chomp
    @name.capitalize! # => added 4-23

    puts "Very nice to meet you, #{ @name }. Today, you'll be choosing 2 numbers. 
    Then I will create a random number in between the 2 you just selected (inclusive). 
    Then, you'll get to guess it!! Sound like fun? Good."
  end
      
  def game_run  

    puts "Could you provide me with the lower of the 2 numbers, #{ @name }?"      
    min = gets.chomp.to_i
    puts "And the upper?"
    max = gets.chomp.to_i
    r_num = min + rand( max - min + 1 ) 

    puts "Great! Now try to guess the number I randomly chose between #{ min } and #{ max } (inclusive)!" 
  	get_guess
      
    still_guessing = true 
    while still_guessing		

      if @guess == r_num 
        still_guessing = false
        puts "Great guess, #{ @name }!"
        repeat_game
      elsif ( @guess > max ) || ( @guess < min )    
        puts "You don't follow directions very well, do you #{ @name }?"
        puts "Between #{ min } and #{ max }, please?!"
        get_guess   
  		
      elsif @guess < r_num
        puts "It's higher, #{ @name }. C'mon!!! Guess again."
        get_guess 

      elsif @guess > r_num
  			puts "Really, #{ @name }?? It's lower. How long must this go on??"
  			get_guess 
  		end
    end
  end

  def repeat_game
    puts "'Yes' or 'No', would you like to play again?"  
    answer = gets.chomp                                             
    answer.downcase!                                          
    if answer == "no"                                                
      puts "Thanks so much for playing, #{ @name }!"                          
      gets
    elsif answer == "yes"
      puts "Excellent!"
      sleep 1
      game_run
    elsif ( answer != "yes" ) || ( answer != "no" )
      puts "I need a 'yes' or 'no' answer, please."
      repeat_game     
    end
  end
end    


new_game = NumberGame.new
new_game.introduce
new_game.game_run
repeat_game = NumberGame.new




	
  