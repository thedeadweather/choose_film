# класс для обьектов фильмов
class Film
# геттеры названия, режиссера, года выпуска
  attr_reader :name, :director, :year

# конструктор экземпляра с инстанс переменными
# названия, режиссера, года выпуска
  def initialize(name, director, year)
    @name = name
    @director = director
    @year = year
  end
end
