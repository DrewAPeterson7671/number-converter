require('number_converter')
require('rspec')

describe('Numbers#converter') do
    it("takes in a single number and returns that number as a word") do
    number1 = Numbers.new("1")
    expect(number1.converter()).to(eq("one"))
  end

  it("reads a two digit number in the teens") do
    number2 = Numbers.new("11")
    expect(number2.converter()).to(eq("eleven"))
  end

  it("reads a two digit number in the teens") do
    number3 = Numbers.new("10")
    expect(number3.converter()).to(eq("ten"))
  end

  it("reads a two digit number in the teens") do
    number4 = Numbers.new("20")
    expect(number4.converter()).to(eq("twenty"))
  end
  # it("reads a two digit number after 20 with a ") do
  #   number3 = Numbers.new("101")
  #   expect(number3.scrabble()).to(eq("one hundred and one"))
  # end
end
