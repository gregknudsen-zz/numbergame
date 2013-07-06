# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-26, 4-27
# => numbergame 11 created to add option of playing again (mod. 5-5 by GK)
# => along with user input of numbers and guess counter

class NumberGame

  def initialize
    @guess = 0
    @name = ""
  end  

  def get_guess                   
    @guess = gets.chomp.to_i
  end     

  def introduce  
    print "Who do I have the pleasure of speaking to? \n\n"
    @name = gets.chomp
    @name.capitalize! # => added 4-23

    puts "Very nice to meet you, #{ @name }. \n\n" 
    puts "Today, you'll be choosing 2 numbers." 
    puts "Then I will create a random number in between the 2 you just selected (inclusive)."
    puts "Then, you'll get to guess it!! Sound like fun? Good."
    game_run
  end
      
  def game_run  
    print "Could you provide me with the lower of the 2 numbers, #{ @name }? " 
      case 
        /^\d+$/
         min = gets.chomp.to_i
         print "And the upper? "
         max = gets.chomp.to_i
      else   
        puts "That's not an integer!"
      end
    r_num = rand(min..max)

    guess_counter = 10

    puts "Great! Now try to guess the number I randomly chose between #{ min } and #{ max } (inclusive)! " 
    puts "You have #{ guess_counter } guesses!".center(55, '*')
  	get_guess
      
    still_guessing = true 
    while still_guessing	
      guess_counter -= 1 unless @guess == r_num

      if guess_counter < 1
        still_guessing = false
        puts "Game over!"
        repeat_game
      end  

      puts "Wow, you are really close!".center(40, '*') if ( @guess == r_num + 1 ) || ( @guess == r_num - 1 ) 

      case
      when  @guess == r_num 
        still_guessing = false
        puts "Great guess, #{ @name }!"
        repeat_game
      when ( @guess > max ) || ( @guess < min )    
        puts "You don't follow directions very well, do you #{ @name }?"
        print "Between #{ min } and #{ max }, please: "
        get_guess   
  		when @guess < r_num
        puts "It's higher, #{ @name }. Guess again:"
        puts "Number of guesses left: #{ guess_counter }" 
        get_guess 
       else @guess > r_num
  			puts "It's lower. Guess again:"
        puts "Number of guesses left: #{ guess_counter }"
  			get_guess 
  		end
    end
  end

  def repeat_game
    print "'Yes' or 'No', would you like to play again? "  
    answer = gets.chomp                                             
    answer.downcase                                          
    if answer == "no"                                                
      puts "Thanks so much for playing, #{ @name }!"                          
      exit
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
