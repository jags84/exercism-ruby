class ResistorColorDuo
  COLORS_VALUE = %w[black brown red orange yellow
                    green blue violet grey white].freeze

  def self.value(colors, value = "")
    colors.each do |color|
      next if value.length == 2

      value << COLORS_VALUE.index(color).to_s
    end
    value.to_i
  end
end
