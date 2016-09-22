require 'delimiter_finder'
require 'newlines_finder'

class Convert
  
  def initialize
    @delimiter = DelimiterFinder.new
    @newlines = NewLinesFinder.new
  end

  def string_to_array(string)
    new_string = @newlines.remove(string)
    new_string.split(@delimiter.detect(string))
  end

  def to_integer(array)
    array.map(&:to_i)
  end
end
