def decode_char(char)
  morse_dictionary = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.',
    'F' => '..-.', 'G' => '--.', 'H' => '....',
    'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.',
    'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-',
    'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }
  morse_dictionary.key(char)
end

def decode_word(word)
  chars = word.split
  english = []
  chars.each { |letter| english.insert(english.length, decode_char(letter)) }
  english.join
end

def decode_sentence(sentence)
  entire_sentence = sentence.split('   ')
  english = []
  entire_sentence.each { |word| english.insert(english.length, decode_word(word)) }
  english.join(' ')
end

print decode_sentence('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
