module NegativeNumbers
  def check_for_negatives(array)
    negatives = array.select { |n| n < 0 }
    raise "negatives not allowed" unless negatives.empty?
  end
end
