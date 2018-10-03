ZERO_TO_THOUSAND = { 0 => 'zero',
                   1 => 'one',
                   2 => 'two',
                   3 => 'three',
                   4 => 'four',
                   5 => 'five',
                   6 => 'six',
                   7 => 'seven',
                   8 => 'eight',
                   9 => 'nine',
                   10 => 'ten',
                   11 => 'eleven',
                   12 => 'twelve',
                   13 => 'thirteen',
                   14 => 'fourteen',
                   15 => 'Fifteen',
                   16 => 'sixteen',
                   17 => 'seventeen',
                   18 => 'eighteen',
                   19 => 'nineteen',
                   20 => 'twenty',
                   30 => 'thirty',
                   40 => 'fourty',
                   50 => 'fifty',
                   60 => 'sixty',
                   70 => 'seventy',
                   80 => 'eighty',
                   90 => 'ninety',
                   100 => 'hundred',
                   1000 => 'thousand'}.freeze

def number_to_words(num)
  if less_than_100?(num)
    tens(num)
  end
end

private

def less_than_100?(num)
  num <= 100
end

def tens(num)
  ZERO_TO_THOUSAND[num] || twenty_to_hundred(num)
end

def twenty_to_hundred(num)
  number = [0]
  first_numebr = num.to_s.split('').first
  second_numebr = num.to_s.split('').last.to_i
  tens = number.unshift(first_numebr).join.to_i
  tens_digit = [ZERO_TO_THOUSAND[tens],ZERO_TO_THOUSAND[second_numebr]].join('-')

end
