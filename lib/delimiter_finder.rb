class DelimiterFinder
  def detect(string)
    delimiter = string.scan(/(?<=\/\/\[).+(?=\]\n)/).join
    delimiter == ""? "," : delimiter
  end
end
