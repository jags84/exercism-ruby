class TwelveDays
  DAYS = %w[first second third fourth fifth sixth seventh eighth ninth tenth eleventh twelfth].freeze
  NUMBERS = %w[a two three four five six seven eight nine ten eleven twelve]
  GIFTS = ['Partridge in a Pear Tree', 'Turtle Doves', 'French Hens', 'Calling Birds',
           'Gold Rings', 'Geese-a-Laying', 'Swans-a-Swimming', 'Maids-a-Milking', 'Ladies Dancing',
           'Lords-a-Leaping', 'Pipers Piping', 'Drummers Drumming'].freeze

  def self.song(lyrics = '')
    DAYS.each_with_index do |day, position|
      lyrics << phrase(day) + make_gift(position + 1) + eol(position)
    end
    lyrics
  end

  private

  def self.phrase(day)
    "On the #{day} day of Christmas my true love gave to me: "
  end

  def self.make_gift(index, gift = '')
    index.times do |i|
      gift.prepend("#{numbers(i, index)} #{gift(i)}#{last?(index, i+1)}")
    end
    gift
  end

  def self.last?(index, i)
    return '.' if i == 1

    ', '
  end

  def self.numbers(index, total)
    return "and #{NUMBERS[index]}" if total > 1 && index == 0
    
    NUMBERS[index]
  end

  def self.gift(index)
    GIFTS[index]
  end

  def self.eol(index)
    return "\n" if index == 11
    
    "\n\n"
  end
end