class Luhn
  def self.valid?(number)
    return false if number.delete(" \t\r\n").length.zero?
    return false if number.length == 1
    return false unless number.delete(" \t\r\n").scan(/\D/).empty?
    return false if number[0] == ' '

    verify(number.tr('^0-9', '').reverse)
  end

  private

  def self.verify(number)
    result = calculate(number)
    (result.inject(:+) % 10).zero?
  end

  def self.calculate(number, result = [])
    seq = number.split('')
    seq.each_with_index do |n, position|
      result << n.to_i if position.even?
      result << double(n) if position.odd?
    end
    result
  end

  def self.double(number)
    final_number = number.to_i * 2
    return final_number - 9 if final_number > 9

    final_number
  end
end