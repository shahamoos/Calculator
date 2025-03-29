def calculator(str)
  numbers = str.split(",")
  numbers.each do |num|
    numbers << num.split("\n")
  end
  sum = 0
  numbers.each do |n|
    sum+=n.to_i
  end
  sum
end
