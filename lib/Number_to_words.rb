ZERO_TO_TEN = { 0 => 'zero',
                1 => 'one',
                2 => 'two',
                3 => 'three',
                4 => 'four',
                5 => 'five',
                6 => 'six',
                7 => 'seven',
                8 => 'eight',
                9 => 'nine',
                10 => 'ten' }.freeze

ElEVEN_TO_TWENTY = { 11 => 'eleven',
                     12 => 'twelve',
                     13 => 'thirteen',
                     14 => 'fourteen',
                     15 => 'Fifteen',
                     16 => 'sixteen',
                     17 => 'seventeen',
                     18 => 'eighteen',
                     19 => 'nineteen',
                     20 => 'twenty' }.freeze

def number_to_words(num)
  num <= 10 ? ZERO_TO_TEN[num] : ElEVEN_TO_TWENTY[num]
end
