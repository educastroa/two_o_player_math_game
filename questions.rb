class Question
  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @correct_answer = @num1 + @num2
  end

  def ask_question(player)
    puts "#{player}: What does #{@num1} plus #{@num2} equal?"
  end

  def check_answer?(player_answer)
    @correct_answer == player_answer
  end
end