def convertCelsius(far)
  celsius = (5 *(far-32))/ 9
  puts ("#{far} F in Celsius is #{celsius} C") end

convertCelsius(212)
convertCelsius(98.6)
convertCelsius(32)
convertCelsius(-40)
convertCelsius(-459)