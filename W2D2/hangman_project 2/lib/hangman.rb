class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

    #Part 1
        def self.random_word
              randWord = DICTIONARY.sample
        end
        #initialize
        def initialize()
              @secret_word = Hangman.random_word
              @guess_word = Array.new(@secret_word.length,"_")
              @attempted_chars = []
              @remaining_incorrect_guesses = 5
        end

        def guess_word
            @guess_word
        end

        def attempted_chars
            @attempted_chars
        end

        def remaining_incorrect_guesses
            @remaining_incorrect_guesses
        end

        def already_attempted?(char)
            if @attempted_chars.include?(char)
              return true
            else
              return false
            end
        end
        
        def get_matching_indices(item)
            newArr = []
            @secret_word.each_char.with_index {|char,i| newArr << i if item == char}
            newArr
        end

      def fill_indices(char,arr)
        
            arr.each do |i|
                  @guess_word[i] = char
            end

      end


    #Part 2
    # try_guess 
     def try_guess(char)
      if already_attempted?(char)
         p "that has already been attempted"
         return false

      else

         @attempted_chars << char
         

            if @secret_word.include?(char) 

                idexArr = get_matching_indices(char)
                  
                fill_indices(char,idexArr)
            else

              @remaining_incorrect_guesses -= 1
              
            end

        return true

      end
      
     end


 #ask_user_for_guess
    def ask_user_for_guess
        p 'Enter a char:'
        guess = gets.chomp
        try_guess(guess)
    end
  
# win ?
   def win?
    if @guess_word.join("") == @secret_word
        p 'WIN'
        return true
    else
       return false
    end
   end

# lose?
   def lose?
      if @remaining_incorrect_guesses == 0 
         p "LOSE"
         return true
      else
        return false
      end
   end

# game over?

def game_over?
   if win? || lose?
       p @secret_word
       return true
   else
      return false
   end
end



end


