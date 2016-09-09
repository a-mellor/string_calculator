class StringCalculator
  def add(string_number)
    new_string = extract_delimiter(string_number).split(',')
    new_string.map(&:to_i).reduce(0, :+)
  end

  def extract_delimiter(string)
    string.gsub(/\W/, ",")
  end
end
