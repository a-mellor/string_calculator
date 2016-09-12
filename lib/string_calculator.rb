class StringCalculator
  def add(string_number)
    puts "nagatives not allowed" if string_number.include?('-')
      # check_for_negatives(string_number)
    new_string = extract_delimiter(string_number)
    new_string_array = convert_string_to_array(new_string)
    integer_array = convert_to_integer(new_string_array)
    sum_array(integer_array)
  end

  private

  def extract_delimiter(string)
    string.gsub(/\W/, ",")
  end

  def convert_string_to_array(string)
    string.split(',')
  end

  def convert_to_integer(array)
    array.map(&:to_i)
  end

  def sum_array(array)
    array.reduce(0, :+)
  end
  #
  # def check_for_negatives(string)
  #   raise "negatives not allowed" if string.include?("-")
  # end
end
