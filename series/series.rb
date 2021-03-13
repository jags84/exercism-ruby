class Series
  def initialize(number)
    @numbers = number.split('')
  end

  def slices(group_by, array = [])
    return raise ArgumentError.new if group_by > @numbers.length

    @numbers.length.times do |number|
      group = @numbers.slice(number, group_by).join
      array << group if group.length == group_by
    end
    array
  end
end
