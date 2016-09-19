require 'module_helper'

class StringCalculator

  include Delimiter
  include NegativeNumbers
  include GreaterThan
  include RemoveNewlines
  include Converter
  include SumArray

  def add(string_number)
    string_array = convert_string_to_array(string_number)
    integer_array = convert_to_integer(string_array)
    sum_array(integer_array)
  end
end
