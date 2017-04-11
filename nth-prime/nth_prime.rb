module BookKeeping
  VERSION = 1
end

class Prime
  def self.nth n
    raise ArgumentError.new("No primes at 0 position") if n == 0
    numbers = []
    numbers << 1.next_prime
    n.times do |i|
      numbers << numbers[i].next_prime
    end
    numbers[n-1]
  end
end

class Integer < Numeric
    def is_prime?
      return false if self <= 1
      2.upto(Math.sqrt(self).to_i) do |x|
          return false if self%x == 0
      end
      true
    end

    def next_prime
      n = self+1
      n = n + 1 until n.is_prime?
      n
    end
end
