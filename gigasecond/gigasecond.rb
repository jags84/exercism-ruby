module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(date)
    (date + (10**9))
  end
end
