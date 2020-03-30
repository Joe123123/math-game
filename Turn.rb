# frozen_string_literal: true

require './Question.rb'

class Turn
  def initialize(current_player)
    @current_player = current_player
  end

  def new_turn
    question = Question.new

    puts "#{@current_player.name}: #{question.new_question}"

    answer = gets.chomp.to_i

    if question.right_answer?(answer)
      puts "#{@current_player.name}: YES! You are correct."
    else
      @current_player.score -= 1
      puts "#{@current_player.name}: Seriously? No!"
    end
  end
end
