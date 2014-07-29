require('rspec')
require('trinary')

describe('trinary_convert') do
  it('converts single digit integer to binary form') do
    trinary_convert("2").should(eq(2))
  end
  it('converts two digit number to binary form') do
    trinary_convert("36").should(eq(1100))
  end
  it('converts three digit number to binary form') do
    trinary_convert("200").should(eq(21102))
  end
end
