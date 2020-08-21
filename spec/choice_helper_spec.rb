require 'choice_helper'
require 'film'

describe ChoiceHelper do
  let(:film1) { Film.new("Леон", "Люк Бессон", "1994") }
  let(:film2) { Film.new("Крутой фильм", "Отличный режиссер", "2020") }
  let(:film3) { Film.new("5й элемент", "Люк Бессон", "1997") }
  let(:film4) { Film.new("Малавита", "Люк Бессон", "2013") }
  let(:collection) { ChoiceHelper.new([film1, film2, film3, film4]) }

  describe 'directors' do
    it 'should return array with directors' do
      expect(collection.directors).to contain_exactly("Люк Бессон", "Отличный режиссер")
    end

    it 'should have list of 2 directors only' do
      expect(collection.directors.size).to eq 2
    end
  end

  describe '#recommend' do
    it "should return recommendation" do
      expect(collection.recommend(0)).to include("Люк Бессон")
      expect(collection.recommend(1)).to eq %(\nИ сегодня рекомендую посмотреть:\nОтличный режиссер - Крутой фильм (2020))
    end
  end
end
