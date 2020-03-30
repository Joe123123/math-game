# frozen_string_literal: true

require './Turn.rb'

class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current = nil
    @winner = nil
  end

  def new_game
    until @winner
      @current = @player1 == @current ? @player2 : @player1

      turn = Turn.new(@current)

      turn.new_turn

      if game_over?
        puts "#{@winner.name} wins with a score of #{@winner.score}/3"
        puts '----- GAME OVER -----'
        puts 'Good bye!'
      else
        puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"
        puts '----- NEW TURN -----'
      end
    end
  end

  private

  def game_over?
    if @player1.score.zero?
      @winner = @player2
      true
    elsif @player2.score.zero?
      @winner = @player1
      true
    else
      false
    end
  end
end
