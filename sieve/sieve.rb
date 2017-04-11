module BookKeeping
  VERSION = 1
end

class Sieve
  require 'prime'
  attr_reader :primes
  def initialize n
    @primes = [*2..n].select{|value| Prime.prime?(value)}
  end
end
