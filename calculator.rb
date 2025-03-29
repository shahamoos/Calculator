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
  else
    return "Negative Numbers not allowed"
  end
end

def find_sum(numbers)
  sum = numbers&.sum
end
