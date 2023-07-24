require 'date'
# Date (Year, Month, Day):
#   %Y - Year with century if provided, will pad result at least 4 digits.
#           -0001, 0000, 1995, 2009, 14292, etc.
#   %C - year / 100 (rounded down such as 20 in 2009)
#   %y - year % 100 (00..99)

#   %m - Month of the year, zero-padded (01..12)
#           %_m  blank-padded ( 1..12)
#           %-m  no-padded (1..12)
#   %B - The full month name (``January'')
#           %^B  uppercased (``JANUARY'')
#   %b - The abbreviated month name (``Jan'')
#           %^b  uppercased (``JAN'')
#   %h - Equivalent to %b

#   %d - Day of the month, zero-padded (01..31)
#           %-d  no-padded (1..31)
#   %e - Day of the month, blank-padded ( 1..31)

#   %j - Day of the year (001..366)

puts Date.new(2015, 3, 1)
puts Date.parse("March 1st, 2015")
puts Date.today + 1