# 4-15-2013
# Number game assignment from iTunes U
# Dates mod. 4-16, 4-21, 4-23, 4-26, 4-27
# => numbergame 11 created to add option of playing again (mod. 5-5 by GK)
# => along with user input of numbers and guess counter
require_relative 'number_game_mod'


class NumberGame

  
  def initialize
    @guess = 0
    @name = ""
    @min = 0
    @max = 0
    @r_num = 0
  end  

  def get_guess                   
    @guess = gets.chomp.to_i
  end     

  def introduce  
    print "Who do I have the pleasure of speaking to? "
    @name = gets.chomp
    @name.capitalize! 
    puts "Very nice to meet you, #{@name}." 
    explain_game
  end

  def explain_game
    puts "Today, you'll be choosing 2 numbers.\n" 
    puts "Then I will create a random number in between the 2 you just selected (inclusive)."
    puts "Then, you'll get to guess it!! Sound like fun? Good."
    get_range
  end

  def get_range
    get_min
    get_max
  end

  def get_min
    print "Please supply the lower number: " 
    @min = gets.chomp.to_i  
  end
      
  def get_max
    print "And the upper: "
    @max = gets.chomp.to_i
    game_run  
  end

  def within_1
    puts "Wow, you are really close!".center(30, '*') if (@guess == @r_num + 1) || (@guess == @r_num - 1) 
  end

  def formatted_guess
    formatted_guess = ("Number of guesses left").ljust(30, '.')
  end

      
  def game_run  
    @r_num = rand(@min..@max) 
    puts "Great! Guess the number I randomly chose between #{@min} and #{@max} (inclusive)! " 
    guess_counter = 4
    puts "You have #{guess_counter} guesses!".center(55, '*')
    get_guess
    
    CollectingGuesses.getting_guesses
  end

  def repeat_game
    print "'Yes' or 'No', would you like to play again? "  
    answer = gets.chomp                                             
    answer.downcase   
    case answer                                       
    when "no"                                                
      puts "Thanks so much for playing, #{@name}!"
      exit
    when "yes"
      puts "Excellent!"
      sleep 1
      get_range
    else (answer != "yes") || (answer != "no")
      puts "I need a 'yes' or 'no' answer, please."
      repeat_game     
    end
  end
end    


new_game = NumberGame.new
new_game.introduce