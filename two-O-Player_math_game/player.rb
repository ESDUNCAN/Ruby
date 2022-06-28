class Player

  attr_reader :name, :score

  def initialize(name)
    @name = name
    @score = 3
  end

  def wrong_answer
    @score -= 1
  end

  def score_is_zero
    @score == 0
  end

  def new_question
    new_question= Questions.new
    new_question.ask_question(name)
    @response = $stdin.gets.chomp
    if new_question.check_answer(@response.to_i)
      puts "Yes! you are correct"
    else 
      puts "Seriously? No!"
      wrong_answer
    end
  end
end


