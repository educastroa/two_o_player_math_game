class Helper
  def initialize()
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

  def begin
    puts "New Game Started. Welcome #{@player_1.name} and #{@player_2.name}"
    turn
  end 

  def winner()
    if @player_1.points == 0
    puts "player_2 wins with the score of #{@player_2.points}/3"
    puts '-GAME-OVER-'
    exit(0)
    
    elsif @player_2.points == 0
      puts "player_1 wins with the score of #{@player_1.points}/3"
      puts '-GAME-OVER-'
      exit(0)
    end

  end

  def turn
    @player_1.new_question
    winner
    @player_2.new_question
    winner
    puts "P1: #{@player_1.points}/3 vs P2: #{@player_2.points}/3"
    puts '----NEW-TURN----'
    turn
  end
end