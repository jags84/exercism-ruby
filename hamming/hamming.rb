module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(dna_a,dna_b)
    return 0 if dna_a == dna_b
    raise ArgumentError.new("Strands must be equal") if dna_a.length != dna_b.length

    strand_a = dna_a.split("")
    strand_b = dna_b.split("")
    distance = 0
    strand_a.length.times do |i|
      if strand_a[i] != strand_b[i]
        distance += 1
      end
    end
    return distance
  end
end
