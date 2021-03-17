module BookKeeping
  VERSION = 3
end

class Binary
  def self.to_decimal number
    raise ArgumentError.new("Invalid Number") if number.match(/[^01]/)
    number.chars.reverse_each.with_index.map do |x, i|
      x == '0' ? 0 : 2**i
    end.reduce(:+)
  end
end
