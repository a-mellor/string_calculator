module GreaterThan
  def ignore_numbers_over_1000(array)
    array.reject { |n| n >= 1000 }
  end
end
