class Player
    def get_move
        puts 'enter a position with coordinates separated with a space like `4 7`' 
        move = gets.chomp.split(' ')
        move.map{|pos| pos.to_i}
    end
end


