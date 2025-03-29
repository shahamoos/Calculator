def calculator(str)
  if str.start_with?("//")
    delimiter = str[2] 
    numbers = str.split(delimiter)
    numbers.shift
  else
    numbers = str.split(/[\n,]/)
  end
  numbers = numbers.map { |n| n.strip.to_i }
  unless numbers.any? { |n| n < 0 }
    find_sum(numbers)
  end
end

def find_sum(numbers)
  sum = 0
  numbers&.each do |num|
    sum += num.strip.to_i
  end
  sum
end
