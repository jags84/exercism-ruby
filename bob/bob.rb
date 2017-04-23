class Bob

  def self.hey text
    # verify
    if Bob.yelling?(text)
      return 'Whoa, chill out!'
    elsif Bob.question?(text)
      return 'Sure.'
    elsif Bob.silence?(text)
      return 'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def self.yelling?(text)
    return (text == text.upcase) && !text.match(/[a-z]/i).nil?
  end

  def self.question?(text)
    return text[-1]== '?'
  end

  def self.silence?(text)
    return text.strip == ""
  end

end
