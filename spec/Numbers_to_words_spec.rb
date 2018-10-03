require 'Numbers_to_words'

describe 'Number_To_Words' do
  context 'Number betweem 0 to 10' do
    it 'returns 0 in words' do
      expect(number_to_words(0)).to eq('zero')
    end

    it 'returns 1 in words' do
      expect(number_to_words(1)).to eq('one')
    end

    it 'returns 2 in words' do
      expect(number_to_words(2)).to eq('two')
    end
  end

  context 'Number betweem 11 to 20' do
    it 'returns 11 in words' do
      expect(number_to_words(11)).to eq('eleven')
    end

    it 'returns 20 in words' do
      expect(number_to_words(20)).to eq('twenty')
    end
  end
end
