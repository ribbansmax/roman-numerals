class RomanNumerals
  @@conversion = [
    [1000, 'M'],
    [900, 'CM'],
    [500, 'D'],
    [400, 'CD'],
    [100, 'C'],
    [90, 'XC'],
    [50, 'L'],
    [40, 'XL'],
    [10, 'X'],
    [9, 'IX'],
    [5, 'V'],
    [4, 'IV'],
    [1, 'I']
  ]

  def self.to_roman(n, roman = '', i = 0)
    if n <= 0 || i == 13
      roman
    else
      mod_remainder = n.divmod(@@conversion[i][0])
      mod_remainder[0].times { roman << @@conversion[i][1] }
      to_roman(mod_remainder[1], roman, i+1)
    end
  end
end

puts RomanNumerals.to_roman(128)   # should return "CXXVIII"
puts RomanNumerals.to_roman(2000)  # should return "MM"
puts RomanNumerals.to_roman(2017)  # should return "MMXVII"
puts RomanNumerals.to_roman(1999)  # should return "MCMXCIX"
puts RomanNumerals.to_roman(-1)