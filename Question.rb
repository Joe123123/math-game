# frozen_string_literal: true

class Question
  def initialize
    @num1 = 0
    @num2 = 0
  end

  def new_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    "What does #{@num1} plus #{@num2} equal?"
  end

  def right_answer?(answer)
    answer == @num1 + @num2
  end
end
