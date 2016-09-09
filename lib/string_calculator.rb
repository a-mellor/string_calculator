class StringCalculator
  def add(string_number)
    if string_number.start_with?("//")
        string_number_array = string_number.gsub(";", ",").split(',')
      else
        string_number_array = string_number.gsub("\n", ",").split(',')
    end
    string_number_array.map(&:to_i).reduce(0, :+)
  end
end
