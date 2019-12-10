class Numbers
  @@ones = {
    "0" => "zero",
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
  }
  @@teens = {
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen"
  }
  @@tens = {
    "20" => "twenty",
    "30" => "thirty",
    "40" => "forty",
    "50" => "fifty",
    "60" => "sixty",
    "70" => "seventy",
    "80" => "eighty",
    "90" => "ninety"
  }
  def initialize(input)
    @input = input
  end

  def converter
    if @input.length == 1
      @@ones.fetch(@input)
    elsif (@input.length == 2) & (@@teens.include?(@input))
      @@teens.fetch(@input)
    elsif (@input.length == 2) & (@input.include?("0"))
      @@tens.fetch(@input)
    else
      return "No Good"

    end
  end
end
