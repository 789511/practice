puts "Входной поток: "
input = ARGF.read

puts "Выходной поток: "

input.scan(/\d+/).reverse_each do |num|
  result = Math.sqrt(num.to_i).round(4)
  puts format('%.4f', result)
end
