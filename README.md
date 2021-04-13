Problem - Roman Numerals

Write a recursive function that converts an integer into a string such that the number is represented in Roman Numerals in the most efficient way.

For example, the number 4 could be written as IIII but it's more efficient to use IVsince that's a shorter string.

Assume no number is greater than 4,000.

Here are the Roman Numeral equivalents you'll need to know:

M=1000
CM=900
D=500
CD=400
C=100
XC=90
L=50
XL=40
X=10
IX=9
V=5
IV=4
I=1

```
puts to_roman(128)   # should return "CXXVIII"
puts to_roman(2000)  # should return "MM"
puts to_roman(2017)  # should return "MMXVII"
puts to_roman(1999)  # should return "MCMXCIX"
```
