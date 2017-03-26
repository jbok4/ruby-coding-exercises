require 'rspec'
# https://www.youtube.com/watch?v=vEIah6upXC8
# http://apidock.com/ruby/String/upto

def sum_generator num
  1.upto(num).inject(&:+)
end

describe 'Dynamic sum' do
  it 'Outputs a sum of digits, ranging from 0 through the argument value' do
    expect(sum_generator 10).to eq(55)
  end
end
