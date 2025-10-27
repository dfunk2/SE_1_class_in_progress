

class Stats
  attr_accessor :hp, :str, :dex, :con, :int, :wis, :cha
  def initialize(hp, str, dex, con, int, wis, cha)
    @hp = 10
    @str = 9         
    @dex = 12
    @con = 8
    @int = 18
    @wis = 10
    @cha = 2
  end

  def compute_damage(base)
    # Pretend this is some complex thing with AC
  end
    # And more functions here to handle stats, weapons, and armor
end

class Player < Stats
  attr_accessor :name, :armor, :weapon

  def initialize(name)
    @name = name
   
    @armor = [
      {
        :name => "iron helmet",
        :ac => 8
      },
      
      {
        :name => "chain mail",
        :ac => 16           # armor class
      }
    ]

    @weapon = [ "short sword", "1d6" ]  # name, damage
  end

  def damage(name)
    @hp = -1
    puts "#{@hp} for player #{@name}"
  end

end

player = Player.new(:Alfredo)
player.damage(:Alfredo)

