require 'check_for'
require 'ignore'

class Sum

  def initialize
    @check_for = CheckFor.new
    @ignore_numbers = Ignore.new
  end

  def sum_array(array)
     @check_for.negatives(array)
     @ignore_numbers.over_1000(array).reduce(0, :+)
  end
end
