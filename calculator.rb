def calculator(str)
  if str.start_with?("//")
    delimiter = str[2] 
    numbers = str.split(delimiter)
    numbers.shift
  else
    numbers = str.split(/[\n,]/)
  end
  numbers = numbers.map { |n| n.strip.to_i }
  negatives = negative_numbers(numbers)
  unless negatives.present?
    find_sum(numbers)
  else
    return "Negative Numbers not allowed #{negatives.join(",")}"
  end
end

def find_sum(numbers)
  sum = numbers&.sum
end

def negative_numbers(numbers)
  numbers.select { |n| n < 0 }
end
