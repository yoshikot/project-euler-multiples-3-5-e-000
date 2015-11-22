# Enter your object-oriented solution here!
class Multiples

  def initialize(number)
    @number = number
  end

  def collect_multiples
    numbers = Array.new(@number - 1, 0)
    count = 0
    while count < numbers.length 
      numbers[count] = count + 1
      count += 1
    end
    numbers.select {|element| element % 3 == 0 || element % 5 == 0}
  end

  def sum_multiples
    sum = 0
    keepers = collect_multiples
    keepers.each {|element| sum = sum + element}
    sum
  end

end