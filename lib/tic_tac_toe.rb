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
    @board.count { |tile| tile != " "}
  end

  def current_player
    turn_count.even? ? "X" : "O"
  end

  def turn
    puts "Please enter a number (1 - 9)"
    inp = gets.strip
    idx = input_to_index(inp)
    if valid_move?(idx)
      move(idx, current_player)
    else
      turn
    end
    display_board
  end

  def won?
    WIN_COMBINATIONS.any? do |combo|
      return combo if position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
    end
  end

  def full?
    @board.detect{|x| x == " "} == nil
  end

  def draw?
    return false if won? && full?
    true
  end
end
