def calculator(str)
  if str.start_with?("//")
    delimiter = str[2] 
    numbers = str.split(delimiter)
  end
  #numbers = str.split(/[\n,]/)
  sum = 0
  numbers.each do |n|
    sum+=n.to_i
  end
  sum
end
