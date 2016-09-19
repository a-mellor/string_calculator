module RemoveNewlines
  def remove_newlines(string)
    string.gsub(/\/\/\[.+\]\n/,"").gsub(/\n/, ",")
  end
end
