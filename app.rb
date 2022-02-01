#require 'bundler'
#Bundler.require

require_relative 'lib/game.rb'
require_relative 'lib/player.rb'

puts
puts "Bienvenue dans l'arene Fortnite !"

player1 = Player.new("Josiane")
puts "#{player1.name} est le premier joueur à combattre"
player2 = Player.new("José")
puts "#{player2.name} est le second joueur à combattre"

  while player1.life_points > 0 && player2.life_points > 0
    puts "- - - - - - - "
    puts "Voici l'état de chaque joueur :"
    player1.show_state
    player2.show_state
    puts "______________________________"

    puts "Passons à la phase d'attaque !"
    player1.attacks(player2)
      if player2.life_points <= 0 
        break
      end
    puts 
    puts "Riposte du joueur 2 !"
    player2.attacks(player1)
  end

#binding.pry