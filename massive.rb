def massiveSorting
  puts "Введите имена (для завершения ввода введите 'end'): "
  input = gets.chomp
  names = []

  while input.downcase != 'end' do
    names << input
    input = gets.chomp
  end

  sorted_names = names.sort_by { |name| name.start_with?("Дилер") ? 1 : 0 }

  puts "Отсортированный массив:\n #{sorted_names}"
end

def hashSorting
  people = []

  puts "Введите данные для каждого человека (для завершения ввода введите 'end'):"
  input = nil

  while input != 'end'
    print "Имя: "
    name = gets.chomp
    break if name.downcase == 'end'

    print "ID: "
    id = gets.chomp.to_i

    person = { id: id, name: name }
    people << person
  end

  sorted_people = people.sort_by { |person| person[:name] }

  puts "\nОтсортированный массив:"
  sorted_people.each do |person|
    puts "ID: #{person[:id]}, Имя: #{person[:name]}"
  end
end

def counter(count, word)
  last_digit = count % 10
  last_two_digits = count % 100

  case word

  when "Канал"
    if last_digit == 1 && last_two_digits != 11
      puts "#{count} канал"
    elsif [2, 3, 4].include?(last_digit) && ![12, 13, 14].include?(last_two_digits)
      puts "#{count} канала"
    else
      puts "#{count} каналов"
    end

  when "Рубль"
    if last_digit == 1 && last_two_digits != 11
      puts "#{count} рубль"
    elsif [2, 3, 4].include?(last_digit) && ![12, 13, 14].include?(last_two_digits)
      puts "#{count} рубля"
    else
      puts "#{count} рублей"
    end

  when "Камера"
    if last_digit == 1 && last_two_digits != 11
      puts "#{count} рубль"
    elsif [2, 3, 4].include?(last_digit) && ![12, 13, 14].include?(last_two_digits)
      puts "#{count} рубля"
    else
      puts "#{count} рублей"
    end
  end
end

#massiveSorting()
#
#hashSorting()
#
#counter(1, "Камера")
#counter(2, "Канал")
#counter(15, "Рубль")
#
#email =~ /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/
#phone =~ /\A\+\d{1,3}\s?\(\d{3}\)\s?\d{3}-\d{2}-\d{2}\z/
#ip_addr =~ /\A(?:[0-9]{1,3}\.){3}[0-9]{1,3}\z/
