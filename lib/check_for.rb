class CheckFor
  def negatives(array)
    negatives = array.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}"  if negatives.any?
  end
end
