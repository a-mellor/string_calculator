class StringCalculator
  def add(string_number)
    new_string = extract_delimiter(string_number)
    new_string_array = convert_string_to_array(new_string)
    new_string_array.map(&:to_i).reduce(0, :+)
  end

  def extract_delimiter(string)
    string.gsub(/\W/, ",")
  end

  def convert_string_to_array(string)
    string.split(',')
  end
end
