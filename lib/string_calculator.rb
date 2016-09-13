class StringCalculator
  def add(string_number)
    new_string_array = convert_string_to_array(string_number)
    integer_array = convert_to_integer(new_string_array)
    sum_array(integer_array)
  end

  private

  def convert_string_to_array(string)
    new_string = remove_newlines(string)
    new_string.split(detect_delimiter(string))
  end

  def remove_newlines(string)
    string.gsub(/\/\/\[.+\]\n/,"").gsub(/\n/, ",")
  end

  def detect_delimiter(string)
    delimiter = string.scan(/(?<=\/\/\[).+(?=\]\n)/).join
    delimiter == ""? "," : delimiter
  end

  def convert_to_integer(array)
    array.map(&:to_i)
  end

  def sum_array(array)
    check_for_negatives(array)
    ignore_numbers_over_1000(array).reduce(0, :+)
  end

  def check_for_negatives(array)
    negatives = array.select { |n| n < 0 }
    raise "negatives not allowed" unless negatives.empty?
  end

  def ignore_numbers_over_1000(array)
    array.reject { |n| n >= 1000 }
  end
end
