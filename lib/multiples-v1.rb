# Enter your procedural solution here!

# If we list all of the natural numbers 
# below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6, and 9. The sum of these 
# multiples is 23.

# Find the sum of all the multiples of 3 
# or 5 below 1000.

numbers = Array.new(999, 0)

count = 0
while count < numbers.length 
  numbers[count] = count + 1
  count += 1
end

keepers = numbers.select do |element|
  element % 3 == 0 || element % 5 == 0
end

sum = 0
keepers.each do |element|
  sum = sum + element
end
print sum