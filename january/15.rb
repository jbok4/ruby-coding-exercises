require 'rspec'
# https://www.crondose.com/2017/01/reverse-letters-string-without-using-reverse-method-ruby/

class String
  def alt_reverse
    new_string = ''
    string_length = self.length -1
    string_length.downto(0).each do |i|
      new_string << self[i]
    end
    new_string
  end
end

describe 'Letter reversing' do
  it 'reverses the letters of a string without using the reverse method' do
    expect("Hi there".alt_reverse).to eq("ereht iH")
  end
end

