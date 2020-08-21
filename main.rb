require_relative 'lib/film'
require_relative 'lib/choice_helper'
require_relative 'lib/scraper'
require 'open-uri'
require 'nokogiri'

# парсим с сайта данные о фильмах и создаем
# массив с экземплярами класса Film (коллекцией фильмов)
collection = Scraper.from_imdb

# создание помощника, который будет выводить информацию
helper = ChoiceHelper.new(collection)

puts %(Программа "Фильмы на вечер"\n\n)
# вызов метода для вывода списка режиссеров
helper.directors.each_with_index { |director, index| puts "#{index}: #{director}" }

puts "Фильм какого режиссера хотите посмотереть?"
choise = STDIN.gets.to_i
# вызов метода для отображения варианта фильма
puts helper.recommend(choise)
