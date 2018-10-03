require "Number_to_words"

describe "Number_To_Words" do
  context "Number betweem 0 to 10" do
    it "returns 0 in words" do
      expect(number_to_words(0)).to eq('zero')
    end

    it "returns 1 in words" do
      expect(number_to_words(1)).to eq('one')
    end

    it "returns 2 in words" do
      expect(number_to_words(2)).to eq('two')
    end
  end
end
