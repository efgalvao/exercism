class Pangram
  def self.pangram?(sentence)
    alphabet = [*('a'..'z')]
    sentence.downcase.each_char do |letter|
      alphabet.delete(letter) if alphabet.include?(letter)
      return true if alphabet.empty?
    end
    false
  end
end
