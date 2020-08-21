require 'film'

describe Film do
  describe '::new' do
    let(:film) { Film.new("Леон", "Люк Бессон", 1994) }
    it "initialize instance variables" do
      film.name.should eq "Леон"
      film.director.should eq "Люк Бессон"
      film.year.should eq 1994
    end
  end
end
