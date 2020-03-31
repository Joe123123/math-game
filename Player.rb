# frozen_string_literal: true

class Player
  attr_accessor :name, :score

  def initialize(name, score = 3)
    @name = name
    @score = score == 'wwssadadba' ? 30 : score
  end
end
