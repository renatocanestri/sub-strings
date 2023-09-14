def substrings(string, dictionary)
  hash = {}
  string = string.downcase
  dictionary.each do |element|
    element = element.downcase
    substring_count = string.scan(/#{element}/).length
    if substring_count > 0
      hash[element] = substring_count
    end
  end
  return hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
