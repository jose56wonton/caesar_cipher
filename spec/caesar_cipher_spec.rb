require "caesar_cipher.rb"


describe "#caesar_cipher" do
  it 'basic translation' do
    expect(caesar_cipher('abc',5)).to eq('fgh')
  end

  it 'capitalized translation' do
    expect(caesar_cipher('ABC',5)).to eq('FGH')
  end

  it 'special case for end of alphabet' do
    expect(caesar_cipher('xyz',3)).to eq('abc')
  end
end
