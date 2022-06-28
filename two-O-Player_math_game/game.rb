class Game 
  
  def initialize(name)
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @name = name
  end

  def begin
    puts "New game started"
    turn
  end

  def show_score
    puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.score}/3"
    puts "---------GAME-OVER--------"
    exit
  end

  def did_someone_win
    if @player1.score_is_zero
      winner(@player2)
    elsif @player2.score_is_zero
      winner(@player1)
    end
  end
  
  def turn 
    @player1.new_question
    did_someone_win
    @player2.new_question
    did_someone_win
    show_score
    puts '---------NEW-TURN---------'
    turn
  end
end



