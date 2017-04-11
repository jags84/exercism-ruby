module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna c
    h = {G:'C', C:'G', T:'A', A:'U'}
    a = ""
    c.chars.each{|c|
      if h[c.to_sym].nil?
        a = ""; break
      else
        a.concat(h[c.to_sym])
      end
    }
    a
  end

end
