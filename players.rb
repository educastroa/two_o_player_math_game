class Player
  attr_reader :name, :points
  def initialize(name)
    @name = name
    @points = 3
  end

  def remove_points
    @points -= 1
  end

  def is_dead
    @points == 0
  end

  def new_question
    new_question = Question.new
    new_question.ask_question(name)
    print '> '
    @user_answer = $stdin.gets.chomp
    if new_question.check_answer?(@user_answer.to_i)
      puts 'Yes! You are correct.'
    else
      puts 'Seriously? No!'
      remove_points
    end
  end
end