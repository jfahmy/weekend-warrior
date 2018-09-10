def words(string)
  counts = Hash.new(0)
  string.split.each do |word|
    counts[word] += 1
  end
  counts
end
