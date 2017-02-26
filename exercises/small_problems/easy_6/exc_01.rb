MINUTES = 60
SECONDS = 60
SECONDS_IN_DEGREE = MINUTES * SECONDS
DEGREE = "\xC2\xB0"

def dms(number)
  total = (number * SECONDS_IN_DEGREE)
  degree, remainder = total.divmod(SECONDS_IN_DEGREE)
  minutes, seconds = remainder.divmod(MINUTES)
  format(%(#{degree}#{DEGREE}%02d'%02d"), minutes, seconds)
end
puts dms(76.73)
