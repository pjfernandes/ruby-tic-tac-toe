class TicTacToe

  attr_accessor :board

  def initialize
    puts "GAME STARTED!"
    @board = Array.new(3) { Array.new(3) {"-"} }
    display_board

    until player1_win? || player2_win?
      run_game
    end

  end

  def player1_move
    puts "PLAYER 1 TURN"
    row = gets.chomp.to_i
    col = gets.chomp.to_i
    @board[row - 1][col - 1] = "X"
    display_board
    if player1_win?
      puts "PLAYER 1 WINS"
    end
  end

  def player2_move
    puts "PLAYER 2 TURN"
    row = gets.chomp.to_i
    col = gets.chomp.to_i
    @board[row - 1][col - 1] = "O"
    display_board
    if player2_win?
      puts "PLAYER 2 WINS"
    end
  end

  private
  def run_game
    player1_move
    player2_move
  end

  def display_board
    @board.each { |place| p place }
  end

  def player1_win?
    @board.any? { |array| array == ["X","X","X"] } ||
    (@board[0][0] == "X" && @board[1][0] == "X" && @board[2][0]) == "X" ||
    (@board[0][1] == "X" && @board[1][1] == "X" && @board[2][1]) == "X" ||
    (@board[0][2] == "X" && @board[1][2] == "X" && @board[2][2]) == "X" ||
    (@board[0][0] == "X" && board[1][1] == "X" && @board[2][2] == "X") ||
    (@board[0][2] == "X" && board[1][1] == "X" && @board[2][0] == "X")
  end

  def player2_win?
    @board.any? { |array| array == ["O","O","O"] } ||
    (@board[0][0] == "O" && @board[1][0] == "O" && @board[2][0]) == "O" ||
    (@board[0][1] == "O" && @board[1][1] == "O" && @board[2][1]) == "O" ||
    (@board[0][2] == "O" && @board[1][2] == "O" && @board[2][2]) == "O" ||
    (@board[0][0] == "O" && board[1][1] == "O" && @board[2][2] == "O") ||
    (@board[0][2] == "O" && board[1][1] == "O" && @board[2][0] == "O")
  end

  def reset_game
    @board = Array.new(3) {Array.new(3) {"-"} }
    puts "GAME RESETED"
    display_board
  end

end

game = TicTacToe.new
