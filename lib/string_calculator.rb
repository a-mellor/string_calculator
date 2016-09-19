require 'delimiter'
require 'negative_numbers'
require 'greater_than'
require 'remove_newlines'

class StringCalculator

  include Delimiter
  include NegativeNumbers
  include GreaterThan
  include RemoveNewlines

  def add(string_number)
    string_array = convert_string_to_array(string_number)
    integer_array = convert_to_integer(string_array)
    sum_array(integer_array)
  end

  private

  def convert_string_to_array(string)
    new_string = remove_newlines(string)
    new_string.split(detect_delimiter(string))
  end

  def convert_to_integer(array)
    array.map(&:to_i)
  end

  def sum_array(array)
    check_for_negatives(array)
    ignore_numbers_over_1000(array).reduce(0, :+)
  end
end
