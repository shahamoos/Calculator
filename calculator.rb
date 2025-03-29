def calculator(str)
  numbers = str.split(/[\n,]/)
  sum = 0
  numbers.each do |n|
    sum+=n.to_i
  end
  sum
end
