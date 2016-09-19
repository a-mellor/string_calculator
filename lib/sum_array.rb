module SumArray
  def sum_array(array)
    check_for_negatives(array)
    ignore_numbers_over_1000(array).reduce(0, :+)
  end
end
