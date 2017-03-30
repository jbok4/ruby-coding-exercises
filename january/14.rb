require 'rspec'
# https://www.crondose.com/2017/01/finding-average-value-array-ruby/

class Array
  def average
    inject(&:+) / length
  end
end

describe 'Calculating Average' do
  it 'returns the average value from an array' do
    arr = [100, 50, 75]
    expect(arr.average).to eq(75)
  end
end
