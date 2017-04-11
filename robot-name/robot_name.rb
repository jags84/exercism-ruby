module BookKeeping
  VERSION = 2
end

class Robot
  @@names = []
  attr_reader :name

  def initialize
    @name = generate_name
  end

  def generate_name
    begin
      name = (0...2).map { ('A'..'Z').to_a[rand(26)] }.join + (0...3).map { ('0'..'9').to_a[rand(10)] }.join
    end while @@names.include?(name)
    @@names << name
    name
  end

  def reset
    initialize
  end

end
