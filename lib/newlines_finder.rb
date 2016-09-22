class NewLinesFinder
  def remove(string)
   string.gsub(/\/\/\[.+\]\n/,"").gsub(/\n/, ",")
  end
end
