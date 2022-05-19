

require_relative 'piece'
require_relative 'stepping'

class Pawn < Piece 

    attr_reader :name

    def initialize(color, board, pos)
        super
        @name = :P
    end

    def at_start_row?
        row, col = pos 
        if self.color == "black"
            return true if row == 1
        elsif self.color == "white"
            return true if row == 6 
        end
    end


    def forward_dir

        white_pawn_trail = []
        black_pawn_trail = []
         getboard = self.board

        if self.color == "black"
            black_moves_dirs = [[1,0],[1,1],[1,-1]]
            black_moves_dirs.each do |dir|
                row, col = self.pos
                i,j = dir 
                black_pawn_trail << [row += i, col += j]
            end
            black_forward = black_pawn_trail.reject do |subarr|
                x, y = subarr 
                x < 0 || x > 7 || y < 0 || y > 7
            end
            
            black = black_forward
        elsif self.color == "white"

            white_moves_dirs = [[-1,0],[-1,-1], [-1,1]]
            white_moves_dirs.each do |dir|
                row, col = self.pos
                i,j = dir 
                white_pawn_trail << [row += i, col += j]
                white_forward =white_pawn_trail.reject do |subarr|
                    x, y = subarr 
                    x < 0 || x > 7 || y < 0 || y > 7
                end
        
                white = white_forward
            end

        end

        if self.color == 'black'
            return black
        elsif self.color == 'white'
            return white
        end
    end

    def forward_steps 
        possible_motions = []
        if self.color == 'black'
            if self.at_start_row 
                row, col = self[pos]
                possible_motions <<[row + 1][col]
                possible_motions <<[row + 2][col]
            else
                possible_motions <<[row + 1][col]
            end
        elsif self.color == 'white'
            if self.at_start_row
                row, col = self[pos]
                possible_motions <<[row - 1][col]
                possible_motions <<[row - 2][col]
            else
                possible_motions <<[row - 1][col]
            end
        end
        possible_moitions
    end

    def side_attacks

    end
end


