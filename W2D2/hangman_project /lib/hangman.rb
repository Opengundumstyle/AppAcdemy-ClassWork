class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
    
#part 1
 
   attr_reader :guess_word , :attempted_chars , :remaining_incorrect_guesses

      def self.random_word
           random = DICTIONARY.sample
      end

   def initialize
       @secret_word = Hangman.random_word
       @guess_word = Array.new(@secret_word.length,"_")
       @attempted_chars = []
       @remaining_incorrect_guesses = 5

   end

  def already_attempted?(char)

    @attempted_chars.include?(char)

  end

  def get_matching_indices(char)

      idxArr = []
      (0...@secret_word.length).each do |i|
          idxArr << i if @secret_word[i] == char
      end

       idxArr
  end


def fill_indices(char,arr)
    
   arr.each do |i|
       @guess_word[i] = char
   end

end



#part 2

 def try_guess(char)
     if already_attempted?(char)

        puts 'that has already been attempted'
        return false

     else
        if @secret_word.include?(char)
            indexArr =  get_matching_indices(char)
            fill_indices(char,indexArr)
        else
            @remaining_incorrect_guesses -= 1
        end
            @attempted_chars << char

           return true

     end
    
 end


 def ask_user_for_guess
   puts 'Enter a char:'
   guess = gets.chomp
   try_guess(guess)
 end


 def win?
    if  @guess_word.join('') == @secret_word
         puts "WIN"
         return true
    else
         return false
    end
 end



 def lose?
   if @remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
   else
      return false
  end
end

def game_over?

    if win? || lose?
        puts @secret_word
        return true
    else
       return false
    end

end



end


