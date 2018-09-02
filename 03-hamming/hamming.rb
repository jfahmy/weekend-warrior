module Hamming

  def self.compute(strand1, strand2)
    if strand1 == strand2
      return 0
    elsif strand1.length != strand2.length
      raise ArgumentError, "Strands of different lengths."
    else
      count = 0
      strand1.split("").each_with_index do |letter, index|
        if strand2[index] != letter
          count += 1
        end
      end
      count
    end
  end

  # def self.compute2(strand1, strand2)
  #   raise ArgumentError if strand1.length != strand2.length
  #   difference = 0
  #   counter = 0
  #   until counter == strand2.length
  #     if strand1[counter] != strand2[counter]
  #       difference += 1
  #     end
  #     counter += 1
  #   end
  #   difference
  # end

end

puts Hamming.compute('GATACA', 'GCATAA')
