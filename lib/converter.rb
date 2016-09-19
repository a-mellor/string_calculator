module Converter
  def convert_string_to_array(string)
    new_string = remove_newlines(string)
    new_string.split(detect_delimiter(string))
  end

  def convert_to_integer(array)
    array.map(&:to_i)
  end
end
