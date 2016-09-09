class StringCalculator
  def add(string_number)
    # replace_newline = string_number.gsub("\n", ",")
    string_number_array = string_number.gsub("\n", ",").split(',')
    string_number_array.map(&:to_i).reduce(0, :+)
  end
end
