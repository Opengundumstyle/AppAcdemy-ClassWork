class Board

    def self.build_stacks(num_stacks)
        Array.new(num_stacks) {Array.new}
    end

    # attr_reader :max_height

    def initialize(num_stacks, max_height)
        if num_stacks < 4 || max_height < 4
            raise 'rows and cols must be >= 4'
        end

        @max_height = max_height
        @stacks = Board.build_stacks(num_stacks)
    end

    def max_height
        @max_height
    end

    def add(token, idx)
        if @stacks[idx].length < max_height
            @stacks[idx] << token
            return true
        else
            return false
        end
    end

    def vertical_winner?(token)
        # @stacks.each do |stack|
        #     if stack.length == max_height && stack.all? {|ele| ele == token}
        #         return true
        #     end
        # end
        # return false

        @stacks.any? {|stack| stack.count(token) == @max_height}

    end

    def horizontal_winner?(token)
        # (0...max_height).each do |i|
        #     return true if @stacks.all?{|stack| stack[i] == token}
        # end
        # false

        transpose_arr = Array.new(max_height) {Array.new(@stacks.length)}
        @stacks.each_with_index do |stack, i|
            stack.each_with_index do |ele, j|
                transpose_arr[j][i] = ele
            end
        end
        transpose_arr.any? {|stack| stack.count(token) == @stacks.length}
    end

    def winner?(token)
        vertical_winner?(token) || horizontal_winner?(token)
    end
    
    # This Board#print method is given for free and does not need to be modified
    # It is used to make your game playable.
    def print
        @stacks.each { |stack| p stack }
    end
end
