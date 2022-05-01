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









end


