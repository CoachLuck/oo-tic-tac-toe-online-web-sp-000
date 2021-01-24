class TicTaceToe
  
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [6,4,2]
  ]
  
  def initialize
    @board = Array.new(9, " ")
  end

  def display_board
    b = @board
    puts " #{b[0]} | #{b[1]} | #{b[2]}"
    puts "---------"
    puts " #{b[3]} | #{b{4}} | #{b[5]}"
    puts "---------"
    puts " #{b[6]} | #{b[7]} | #{b[8]}"
  end

end