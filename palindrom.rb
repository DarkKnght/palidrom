if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# encoding: utf-8
#
# Программа, проверяющая палиндром введенное слово или нет, версия 1

# Спрашиваем у пользователя строку, отрезаем у неё крайние пробелы (и символ
# переноса заодно) методом strip, а затем и приводим строку к нижнему регистру
# методом downcase. Результат записываем в переменную original_string.
original_string = gets.strip.downcase.chomp.scan(/\w+/).join

# Получаем перевернутую строку и записываем её в переменную reverse_string.
reverse_string = original_string.reverse

# Сравниваем обе строки и выносим вердикт
if reverse_string == original_string
  puts 'Да, это палиндром'
else
  puts 'Нет, это не палиндром'
end