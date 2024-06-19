#!/usr/bin/env ruby

loop do
  puts "Введите ваше любимое число: "
  input = gets.chomp

  if input =~ /\A\d+\z/
    number = input.to_i + 1
    puts "Может, лучше это: #{number}?"
    break
  else
    puts "Введено не числовое значение"
  end
end
