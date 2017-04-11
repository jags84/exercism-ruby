module BookKeeping
  VERSION = 3
end

class Raindrops

  REPLACEMENT = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }

  def self.convert n
    c = ""
    REPLACEMENT.each do |key,value|
      if n%key.to_i == 0
        c.concat(value)
      end
    end
    return n.to_s if c == ""
    c
  end
  
end
