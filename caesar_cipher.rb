require 'sinatra'
require 'sinatra/reloader' if development?
get '/' do 
  erb :index
end
get '/submit' do
  post = params[:post]
  @word = params['word']
  @shift = params['shift']
  @shifted_word = caesar_cipher(@word,@shift.to_i)

  erb :index

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

