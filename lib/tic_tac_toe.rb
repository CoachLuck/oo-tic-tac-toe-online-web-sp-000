class TicTacToe

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
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

  def input_to_index(str)
    str.to_i - 1
  end

  def move(idx, c)
    @board[idx] = c
  end

  def position_taken?(idx)
    @board[idx] != " "
  end

  def move(idx, player = "X")
    @board[idx] = player
  end

  def valid_move?(idx)
    !position_taken?(idx) && idx.between?(0, 8)
  end

  def turn_count
    @board.count { |idx| position_taken?(idx)}
  end

end
