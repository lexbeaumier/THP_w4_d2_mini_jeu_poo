#require "pry"
class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} point(s) de vie"
  end

  def gets_damage(damage)
    @life_points = @life_points - damage
    if @life_points <= 0 
      puts "Le joueur #{@name} a été tué !"
    else 
      puts "#{@name} a #{life_points} point(s) de vie"
    end
  end
    
  def attacks(player)
    damage = compute_damage
    puts "le joueur #{@name} attaque le joueur #{player.name}"
    puts "il lui inflige #{damage} points de dommages !"
    player.gets_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end
end

#binding.pry
#puts "end of file"