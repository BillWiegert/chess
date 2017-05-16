require_relative 'piece'
require_relative 'sliding_module'

class Rook < Piece
  include SlidingPiece
  def initialize(color = :nil, board)
    @symbol = define_symbol("♜")
    super(color, board)
  end

  def move_dirs
    perpendicular
  end
end
