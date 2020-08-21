Подбор фильма
======

Учебная консольная программа, погомающая подобрать фильм для просмотра.  
Программа парсит информацию о фильмах с сайта IMDB выводит список режиссеров топ-50 фильмов.  
После выбора режиссера будет предложен рандомный фильм данного режиссера.  
___

Пример работы программы программы:
```
Программа "Фильмы на вечер"

0: Frank Darabont
1: Francis Ford Coppola
2: Christopher Nolan
3: Peter Jackson
4: Quentin Tarantino
5: Steven Spielberg
6: Sidney Lumet
7: Thomas Kail
8: David Fincher
9: Robert Zemeckis
10: Sergio Leone
11: Lana Wachowski
12: Martin Scorsese
13: Irvin Kershner
14: Milos Forman
15: Masaki Kobayashi
16: Bong Joon Ho
17: Fernando Meirelles
18: Hayao Miyazaki
19: Roberto Benigni
20: Jonathan Demme
21: George Lucas
22: Akira Kurosawa
23: Frank Capra
24: Todd Phillips
25: Damien Chazelle
26: Olivier Nakache
27: Roman Polanski
28: Ridley Scott
29: Tony Kaye
30: Bryan Singer
31: Luc Besson
32: Roger Allers
33: James Cameron
34: Giuseppe Tornatore
35: Isao Takahata
36: Hrishikesh Mukherjee
37: Alfred Hitchcock
Фильм какого режиссера хотите посмотереть?
2

И сегодня рекомендую посмотреть:
Christopher Nolan - Интерстеллар (2014)
```
___

Программа написана на Ruby  
Для запуска необходимо перейти в терминале в каталог с программой и запустить ее следующей командой:  
`$ ruby main.rb`
___

Также программа покрыта тестами Rspec.
Если rspec не установлен, запустите следующую команду:  
`$ gem install rspec`

Далее запустите тесты, введя в каталоге с программой команду:  
`$ rspec spec/`

___

Программа создана в рамках учебного проекта ["Хороший программист"](https://goodprogrammer.ru) 
