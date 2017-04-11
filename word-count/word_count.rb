module BookKeeping
  VERSION = 1
end

class Phrase
  attr_reader :text,:counts
  def initialize phrase
    @text = phrase.gsub(/[@\.!&*:,@$%^]|( '|' )/,' ')
    @counts = Hash.new(0)
  end

  def word_count
    words = @text.downcase.split(" ")
    words.each do |word|
      @counts[word] += 1
    end
    @counts
  end
end
