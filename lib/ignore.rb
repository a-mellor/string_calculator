class Ignore
  def over_1000(array)
    array.reject { |n| n >= 1000 }
  end
end
