def find_leap_years(start_year, end_year)
  leap_years = []
  (start_year..end_year).each do |year|
    if year % 4 == 0
      leap_years << year
    end
    leap_years.each do |year|
      if year % 100 == 0 && year % 400 != 0
        leap_years.delete(year)
      end
    end
  end
  p leap_years
end

find_leap_years(2000, 2012) # should return: [2000, 2004, 2008, 2012]
p "---------------------"
find_leap_years(1895, 1910) # should return: [1896, 1904, 1908]

#There is a leap year every year whose number is perfectly divisible by four -
#except for years which are both divisible by 100 and not divisible by 400.
