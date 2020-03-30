# frozen_string_literal: true

require './Player.rb'
require './Game.rb'

player1 = Player.new('Player 1')

player2 = Player.new('Player 2')

game = Game.new(player1, player2)

game.new_game
