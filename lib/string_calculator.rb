require 'converter'
require 'sum'

class StringCalculator

  def initialize
    @convert = Convert.new
    @sum = Sum.new
  end

  def add(string_number)
    string_array = @convert.string_to_array(string_number)
    integer_array = @convert.to_integer(string_array)
    @sum.sum_array(integer_array)
  end
end
