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
  end

  def get_min
    print "Please supply the lower number: " 
    @min = gets.chomp.to_i 
    get_max 
  end
      
  def get_max
    print "And the upper: "
    @max = gets.chomp.to_i
    game_run  
  end
      
  def game_run  

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
      end  

      puts "Wow, you are really close!".center(30, '*') if ( @guess == r_num + 1 ) || ( @guess == r_num - 1 ) 

      if @guess == r_num 
        still_guessing = false
        puts "Great guess, #{ @name }!"
        repeat_game
      elsif ( @guess > max ) || ( @guess < min )    
        puts "You don't follow directions very well, do you #{ @name }?"
        print "Between #{ min } and #{ max }, please! "
        get_guess   
      
      elsif @guess < r_num
        puts "It's higher, #{ @name }. C'mon!!! Guess again."
        puts "Number of guesses left: #{ guess_counter }" 
        get_guess 

      elsif @guess > r_num
        puts "Really, #{ @name }?? It's lower. How long must this go on??"
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