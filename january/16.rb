require 'rspec'
# https://www.crondose.com/2017/01/how-to-rotate-elements-array-ruby/

def array_rotation arr, num
  arr.rotate(num)
end

describe 'Array index change' do
  it 'Rotates the index values for each of the array elements' do
    expect(array_rotation([1, 2, 3], 2)).to eq([3, 1, 2])
  end
end

