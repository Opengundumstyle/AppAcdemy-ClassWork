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


end


