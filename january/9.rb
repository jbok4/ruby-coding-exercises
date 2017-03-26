require 'rspec'
# https://www.youtube.com/watch?v=kg9KutIbnt4

def fraction_calculator fraction_one, fraction_two, operator
  num1 = Rational(fraction_one)
  num2 = Rational(fraction_two)
  result = case operator
    when '/' then num1 / num2
    when "*" then num1 * num2
    when '+' then num1 + num2
    when '-' then num1 - num2
  end

  result.to_s
end

describe 'Fraction multiplication' do
  it 'can multiply two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end

