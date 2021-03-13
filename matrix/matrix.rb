class Matrix
  def initialize(matrix)
    @matrix = matrix
    @array = matrix.split(/[\n -]/).reject(&:empty?)
  end

  def rows(matrix = [])
    total_rows.times do |index|
      from = index * elements_per_row
      to = from + elements_per_row - 1
      matrix << @array[from..to].map(&:to_i)
    end
    matrix
  end

  def columns
    rows.transpose
  end

  private

  def total_rows
    @matrix.count("\n") + 1
  end

  def elements_per_row
    @array.length / total_rows
  end
end
