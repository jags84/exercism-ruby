class Scrabble
  def initialize(word)
    @values = generate_values
    @word = word
    @value = 0
  end

  def score
    return 0 if @word.nil? || @word.empty?

    letters = @word.split('')
    letters.each do |letter|
      @value += letter_value(letter)
    end
    @value
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  private

  def letter_value(letter)
    value = @values.select {|v,l| l.include? letter.upcase}
    return 0 if value.empty?

    value.keys[0]
  end

  def generate_values
    {
      1 => %w[A E I O U L N R S T],
      2 => %w[D G],
      3 => %w[B C M P],
      4 => %w[F H V W Y],
      5 => %w[K],
      8 => %w[J X],
      10 => %w[Q Z]
    }
  end
end