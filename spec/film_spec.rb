require 'film'

describe Film do
  describe '::new' do
    let(:film) { Film.new("Леон", "Люк Бессон", 1994) }
    it "initialize instance variables" do
      expect(film.name).to eq "Леон"
      expect(film.director).to eq "Люк Бессон"
      expect(film.year).to eq 1994
    end
  end
end
