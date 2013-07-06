# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-26, 4-27
# => numbergame 9 created to add option of playing again
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
    puts "Who do I have the pleasure of speaking to?"		
    @name = gets.chomp
    @name.capitalize! 

    puts "Very nice to meet you, #{ @name }. Today, you'll be choosing 2 numbers. 
    Then I will create a random number in between the 2 you just selected. 
    Then, you'll get to guess it!! Sound like fun? Good."
  end
      
  def game_run  

    puts "Could you provide me with the lower of the 2 numbers, please?"      
    min = gets.chomp.to_i
    puts "And the upper?"
    max = gets.chomp.to_i
    r_num = min + rand(max - min + 1) 

    puts "Great! Now try to guess the number I randomly chose between #{ min } and #{ max }!" 
  	get_guess
      
    still_guessing = true 
  	while still_guessing		

      if @guess == r_num 
  			puts "Great guess! You're right, #{ @name }!!"
        still_guessing = false  
      elsif (@guess > max) || (@guess < min)    # => logic added 4-27
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
end  


new_game = NumberGame.new
new_game.introduce
new_game.game_run

puts "Great job! 'Yes' or 'No', would you like to play again?"  # => 5-3
answer = gets.chomp                                             # => This syntax works on a crude level
answer.downcase                                                 # => as it only lets you play again once, and
if answer == 'no'                                               # => it asks for your name again. 
  puts "Thanks so much for playing!"                            # => Onto numbergame 10!!
  gets
elsif answer == 'yes'
  new_game.game_run
end  

	
  