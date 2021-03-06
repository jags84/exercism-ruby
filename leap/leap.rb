module BookKeeping
  VERSION = 2
end

class Year
  def self.leap? year
    if year % 400 == 0
      return true
    elsif year % 100 == 0
      return false
    elsif year % 4 == 0
      return true
    end
    return false
  end
end
