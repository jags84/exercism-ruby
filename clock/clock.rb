class Clock
  HOUR = 3600.freeze
  MINUTE = 60.freeze

  attr_reader :total

  def initialize(params)
    @hour = params[:hour] || 0
    @minute = params[:minute] || 0
    @total = (@hour.to_i * HOUR) + (@minute.to_i * MINUTE)
  end

  def to_s
    format(@total)
  end

  def total
    @total
  end

  def +(total)
    @total = @total + total.total
    self
  end

  def -(total)
    @total = @total - total.total
    self
  end

  def ==(total)
    format(@total) == format(total.total)
  end

  private

  def format(seconds)
    Time.at(seconds).utc.strftime("%H:%M")
  end
end