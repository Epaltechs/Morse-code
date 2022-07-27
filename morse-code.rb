   
@collection = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
    'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
} 

def decode_char(char)
  @current_char = @collection.invert[char]
  @current_char.upcase
end

def decode_word
  @entire_word = ''
  @char = word.split
  @char.each do |char|
    @entire_word += decode_char(char)
  end
  print @entire_word.to_s
end    




