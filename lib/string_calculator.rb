class StringCalculator
  def add(string_number)
    string_number_array = string_number.split(',')
    string_number_array.map(&:to_i).reduce(0, :+)
  end
end
