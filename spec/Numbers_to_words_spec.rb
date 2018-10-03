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

  context 'Number less than 100' do
    it 'returns 11 in words' do
      expect(number_to_words(11)).to eq('eleven')
    end

    it 'returns 20 in words' do
      expect(number_to_words(20)).to eq('twenty')
    end

    it 'display units in tens' do
      expect(number_to_words(70)).to eq('seventy')
    end

    it 'returns 99 in words' do
      expect(number_to_words(99)).to eq('ninety-nine')
    end
  end

  context 'Number betweem 100 to 1000' do
    it 'returns 100 in words' do
      expect(number_to_words(100)).to eq('one-hundred')
    end

    it 'returns 900 in words' do
      expect(number_to_words(900)).to eq('nine-hundred')
    end

    it 'display 999 as nine-hundred and nine-nine' do
      expect(number_to_words(999)).to eq('nine-hundred and ninety-nine')
    end

    it 'returns 1000 in words' do
      expect(number_to_words(1000)).to eq('one-thousand')
    end
  end
end
