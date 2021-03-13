class Isogram
  def self.isogram?(word)
    word.downcase.gsub(/[\s-]+/,'').chars.uniq == word.downcase.gsub(/[\s-]+/,'').chars
  end
end