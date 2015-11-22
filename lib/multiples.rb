# Enter your procedural solution here!

# If we list all of the natural numbers 
# below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6, and 9. The sum of these 
# multiples is 23.

# Find the sum of all the multiples of 3 
# or 5 below 1000.

def collect_multiples(number)
  
  numbers = Array.new(number - 1, 0)
  count = 0
  while count < numbers.length 
    numbers[count] = count + 1
    count += 1
  end

  numbers.select do |element|
    element % 3 == 0 || element % 5 == 0
  end

end

def sum_multiples(number)

  sum = 0
  keepers = collect_multiples(number)
  keepers.each do |element|
    sum = sum + element
  end
  sum

end