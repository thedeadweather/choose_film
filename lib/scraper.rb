class Scraper
  ADRESS = "https://www.imdb.com/search/title/?groups=top_250&sort=user_rating".freeze

  def self.from_imdb
    # парсим страницу
    page = Nokogiri::HTML(open(ADRESS))

    # скрапим названия, режиссеров и года выпуска
    titles =
      page.css('.lister-item-index + a[href^="/title/tt"]').map { |i| i.text }
    directors =
      page.css('p:contains("Director") a:first-child').map { |i| i.text }
    years =
      page.css('.lister-item-year').map { |i| i.text[/\d+/] }

    # сливаем все данные один массив и возвращаем новый
    # массив с экземплярами класса Film
    titles.zip(directors, years).map { |info| Film.new(info[0], info[1], info[2]) }
  end
end
