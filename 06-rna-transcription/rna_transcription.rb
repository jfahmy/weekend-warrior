require 'pry'

# * `G` -> `C`
# * `C` -> `G`
# * `T` -> `A`
# * `A` -> `U`

class Complement
    RNA = {"A" => "T", "C" => "G", "G" => "C", "U" => "A"}
    DNA = {"A" => "U", "C" => "G", "G" => "C", "T" => "A"}

  def self.of_rna(strand)
    #ACGU
    strand.split("").each_with_index do |letter, index|
      raise ArgumentError if RNA[letter] == nil
      strand[index] = RNA[letter]
    end
    strand
  end

  def self.of_dna(strand)
    #ACGT
    strand.split("").each_with_index do |letter, index|
      raise ArgumentError if DNA[letter] == nil
      strand[index] = DNA[letter]
    end
    strand
  end

end
