require('rspec')
require('luck_check')

describe('luck_check') do
  it("should return true if the sum of one side equals the sum of the other side") do
    luck_check("003111").should(eq("true"))
  end
  it("should return false if the sum of one side does not equal the sum of the other side") do
    luck_check("19863").should(eq("false"))
  end
  it("should remove the middle number if the string is has an odd value") do
    luck_check("17935").should(eq("true"))
  end
end
