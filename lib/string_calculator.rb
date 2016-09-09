class StringCalculator
  def add(string_number)
    string_number_array = string_number.split(',')
    string_number_array[0].to_i + string_number_array[1].to_i
  end
end
