module BookKeeping
  VERSION = 3
end

class Squares

  def initialize num
    @num = num
    @a = [*1..num]
  end

  def square_of_sum
    @a.reduce(:+) ** 2
  end

  def sum_of_squares
    @a.inject{|sum,n| sum + n**2}
  end

  def difference
    return 0 if @num == 0
    square_of_sum - sum_of_squares
  end

end
