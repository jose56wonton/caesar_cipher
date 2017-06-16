require 'sinatra'
require 'sinatra/reloader'
get '/' do 
  "hell0"
end



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
  encoded_msg

end

