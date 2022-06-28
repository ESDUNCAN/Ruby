class Questions

  def initialize
    @number1 = rand(20)
    @number2 = rand(20)
    @sum = @number1 + @number2
  end

  def ask_question(name)
    puts "#{name} What does #{@number1} plus #{@number2} equal?"
  end

  def check_answer(response)
    @sum == response
  end  
end

