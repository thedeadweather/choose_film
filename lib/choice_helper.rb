# класс обьекта вывода информации
class ChoiceHelper
  attr_reader :directors

  # конструктор объекта вывода информации
  # с инстанс переменными: коллекцией фильмов
  # и коллекцией режиссеров
  def initialize(films)
    @films = films
    @directors = @films.map { |film| film.director }.uniq
  end

  # метод выбирает из коллекции фильм,
  # у которого совпадает выбранный пользователем режиссер,
  # и возвращает строку с его названием и годом
  def recommend(choise)
    variant = @films.select { |film| film.director == @directors[choise] }.sample
    %(\nИ сегодня рекомендую посмотреть:\n#{variant.director} - #{variant.name} (#{variant.year}))
  end
end
