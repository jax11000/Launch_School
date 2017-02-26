HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def time_of_day(minutes)
  minutes = minutes % MINUTES_IN_DAY
  hours, minutes = minutes.divmod(MINUTES_IN_HOUR)
  format("%02d.%02d", hours, minutes)
end

puts time_of_day(3000)