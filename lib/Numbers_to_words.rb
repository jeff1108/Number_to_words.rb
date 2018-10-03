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
  elsif less_than_1000?(num)
    hundreds(num)
  end
end

private

def less_than_100?(num)
  num < 100
end

def tens(num)
  ZERO_TO_THOUSAND[num] || convert_tens(num)
end

def convert_tens(num)
  number = [0]
  first_number = num.to_s.split('').first
  second_number = num.to_s.split('').last.to_i
  tens = number.unshift(first_number).join.to_i
  tens_digit = [ZERO_TO_THOUSAND[tens],ZERO_TO_THOUSAND[second_number]].join('-')
end

def less_than_1000?(num)
  num < 1000
end

def hundreds(num)
  number = num.to_s.split('')
  words = []
  words << [ZERO_TO_THOUSAND[number[0].to_i], ZERO_TO_THOUSAND[100]].join('-')
  words << tens(num.to_s.slice(1,2).to_i) if not_divisible_by_100?(num)
  words.join(' and ')
end

def not_divisible_by_100?(num)
  num % 100 != 0
end
