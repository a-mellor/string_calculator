module Delimiter
  def detect_delimiter(string)
    delimiter = string.scan(/(?<=\/\/\[).+(?=\]\n)/).join
    delimiter == ""? "," : delimiter
  end
end
