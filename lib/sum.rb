require 'check_for'
require 'ignore_numbers'

class Sum

  def initialize
    @check_for = CheckFor.new
    @ignore_numbers = IgnoreNumbers.new
  end

  def sum_array(array)
     @check_for.negatives(array)
     @ignore_numbers.over_1000(array).reduce(0, :+)
  end
end
