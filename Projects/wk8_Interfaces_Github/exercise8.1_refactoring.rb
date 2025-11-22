class Poker
  def initialize(players)
    @players = players
    @hands = []
    players.length().times { |x| @hands.append(nil) }
  end

  def play()
    puts "Players in the poker game:"
    @players.length().times { |i| puts "#{self.get_player_name(i)}: #{self.get_player_hand(i)}" }
    # [pretend there's code here]
  end

  def score()
    return "[pretend these are poker results]"
  end

  def get_player_name(i)
    return @players[i]
  end

  def get_player_hand(i)
    return @hands[i]
  end
end

class Chess
  def initialize(players)
    @players = players
  end

  def play()
    puts "Players in the chess game:"
    @players.length().times { |x| puts "#{self.get_player_name(x)}: #{@players[x][1]}" }
    # [pretend there's code here]
  end

  def score()
    return "[pretend these are chess results]"
  end

  def get_player_name(i)
    @players[i][0]
  end
end

class GoPlayer
  attr_reader :name, :color

  def initialize(name, color)
    @name = name
    @color = color
  end
end

class Go
  def initialize(players)
    @players = []
    players.each { |x, y| @players.append(GoPlayer.new(x, y)) }
  end

  def play()
    puts "Players in the go game:"
    @players.each { |player| puts "#{player.name}: #{player.color}" }
    # [pretend there's code here]
  end

  def score()
    return "[pretend these are go results]"
  end
end

class PlayGames

  def initialize(game, player_list)
    @player_list = player_list
    @game = game
  end

  def play()

      game = @game.new(@player_list)
      game.play()
      puts game.score()
  end

end

pg = PlayGames.new(Poker, ["alice", "bob", "chris", "dave"])
pg.play()

puts

pg = PlayGames.new(Chess, [["alice", "white"], ["bob", "black"]])
pg.play()

puts

pg = PlayGames.new(Go, [["alice", "white"], ["bob", "black"]])
pg.play()

# List of changes
# playgames is the interface for all the classes. Sends the message of score and play to each class but doesnt know the classes other methods.
# Got rid of game_number and passed game class name instead. Then I only need to create one instance of a game within playgames 


