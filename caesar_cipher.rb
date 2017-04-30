def caesar_cipher( words , shift )
  encoded_msg = ""

  words.each_char do |char|
    num_ciphered = char.ord + shift

    unless num_ciphered > 122
      char_ciphered = num_ciphered.chr
    else
      char_ciphered = (num_ciphered-26).chr
    end
    encoded_msg += char_ciphered
  end
  puts "Your msg was: #{encoded_msg}"

end

caesar_cipher("a", 1)
caesar_cipher("b", 1)
caesar_cipher("c", 1)


caesar_cipher("x", 1)
caesar_cipher("y", 1)
caesar_cipher("z", 1)
