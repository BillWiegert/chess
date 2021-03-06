require_relative 'piece'
require_relative 'sliding_module'

class Rook < Piece
  include SlidingPiece

  attr_accessor :can_castle, :first_move

  def initialize(color, board, pos = nil)
    @symbol = define_symbol("♜")
    @can_castle = true
    @first_move = nil
    super(color, board, pos)
  end

  def self.initial
    "R"
  end

  def move_dirs
    perpendicular
  end

  def dup(new_board)
    duped = self.class.new(self.color, new_board, self.pos)
    duped.can_castle = self.can_castle

    duped
  end
end
