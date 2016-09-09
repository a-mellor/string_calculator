class StringCalculator
  def add(string_number)
    string_number_array = extract_delimiter(string_number).split(',')
    string_number_array.map(&:to_i).reduce(0, :+)
  end

  def extract_delimiter(string)
    string.gsub(/\W/, ",")
  end
end
