def calculator(str)
  if str.start_with?("//")
    delimiter = str[2] 
    numbers = str.split(delimiter)
    numbers.shift
  else
    numbers = str.split(/[\n,]/)
  end
  sum = 0
  #numbers.each do |n|
    #sum+=n.to_i
  #end
  sum
end
