require_relative 'numbergame15'

module CollectingGuesses
  def getting_guesses
    still_guessing = true
    while still_guessing  
      guess_counter -= 1 unless @guess == @r_num
      if guess_counter < 1
        still_guessing = false
        puts "#{formatted_guess}#{guess_counter}\nGame over!"
        repeat_game
      end  
      
      within_1  

      case
      when @guess == @r_num 
        still_guessing = false
        puts "Great guess, #{@name}!"
        repeat_game
      when ( @guess > @max ) || ( @guess < @min )    
        puts "You don't follow directions very well, do you #{@name}?"
        print "Between #{@min} and #{@max}, please! "
        get_guess   
      when @guess < @r_num
        puts "It's higher."
        puts "#{formatted_guess}#{guess_counter}"
        get_guess 
      else @guess > @r_num
        puts "It's lower."
        puts "#{formatted_guess}#{guess_counter}"
        get_guess 
      end
    end
  end
end
      