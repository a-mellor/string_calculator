class CheckFor
  def negatives(array)
    negatives = array.select { |n| n < 0 }
    raise "negatives not allowed" unless negatives.empty?
  end
end
