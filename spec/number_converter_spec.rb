require('number_converter')
require('rspec')

describe('Numbers#converter_hundreds') do
    it("takes in a single number and returns that number as a word") do
    number1 = Numbers.new("1")
    expect(number1.converter_hundreds()).to(eq("one"))
  end

  it("reads a two digit number in the teens") do
    number2 = Numbers.new("11")
    expect(number2.converter_hundreds()).to(eq("eleven"))
  end

  it("reads a two digit number that is ten") do
    number3 = Numbers.new("10")
    expect(number3.converter_hundreds()).to(eq("ten"))
  end

  it("reads a two digit to get even tens") do
    number4 = Numbers.new("20")
    expect(number4.converter_hundreds()).to(eq("twenty"))
  end

  it("reads a two digit number over the teens") do
    number5 = Numbers.new("27")
    expect(number5.converter_hundreds()).to(eq("twenty-seven"))
  end
  it("reads in hundreds") do
    number5 = Numbers.new("999")
    expect(number5.converter_hundreds()).to(eq("nine hundred and ninety-nine"))
  end
  it("reads in hundreds with zero in 10s") do
    number6 = Numbers.new("101")
    expect(number6.converter_hundreds()).to(eq("one hundred and one"))
  end
end
