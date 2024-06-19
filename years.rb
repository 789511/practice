#!/usr/bin/env ruby

def calculate_age_and_days(secs)
  seconds_in_a_day = 60 * 60 * 24
  seconds_in_a_year = 60 * 60 * 24 * 365
  seconds_in_a_leap_year = 60 * 60 * 24 * 366

  age_years = secs / seconds_in_a_year

  if age_years > 4
    leap_years = (age_years / 4).floor - (age_years / 100).floor + (age_years / 400).floor

    total_seconds_with_leap_years = secs + (leap_years * (seconds_in_a_leap_year - seconds_in_a_year))

    full_years = total_seconds_with_leap_years / seconds_in_a_year
    remaining_seconds = total_seconds_with_leap_years % seconds_in_a_year
  else
    full_years = age_years
    remaining_seconds = secs % seconds_in_a_year
  end

  remaining_days = remaining_seconds / seconds_in_a_day

  puts "Если вы прожили #{secs} секунд, то ваш возраст составляет примерно #{full_years} лет и #{remaining_days} дней."
end

puts "Введите количество секунд, которые вы прожили: "
secs = gets.chomp.to_i
calculate_age_and_days(secs)
