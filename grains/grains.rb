module BookKeeping
  VERSION = 1
end

class Grains
  def self.square n
    raise ArgumentError.new("No grains at 0 position") if n < 1 || n > 64
    return generate_grains(n)[n-1]
  end

  def self.total
    board = generate_grains(64)
    board.reduce(:+)
  end

  def self.generate_grains n
    board = [1]
    n.times do |i|
      if i > 0
        board << board[i-1] * 2
      end
    end
    board
  end

end
