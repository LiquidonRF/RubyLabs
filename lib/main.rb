require 'degrees_converter'

class Main
  def self.number_reader
    number = gets.chomp
    if number.to_f.to_s == number
      number.to_f
    else
      -1
    end
  end

  def self.run
    puts 'Уnter the number of degrees'
    value = number_reader
    if value == -1
      puts 'Incorrect value'
    else
      puts 'Enter what to convert(C, F, K)'
      from = gets
      puts 'Enter what to convert to(C, F, K)'
      to = gets
      puts 'Result', DegreesConverter.convert(value, from, to)
    end
  end
end

Main.run
