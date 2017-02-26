require 'pry'
HOURS_IN_DAY = 24
MINUTES_IN_HOUR = 60
MINUTES_IN_DAY = HOURS_IN_DAY * MINUTES_IN_HOUR

def after_midnight(time)
  time_arr = time.split(':')
  time_arr.map!(
    &:to_i)
  time_in_minutes = (time_arr[0] * 60) + (time_arr[1])
  time_in_minutes
end

def before_midnight(time)
  time_in_minutes = MINUTES_IN_DAY - after_midnight(time)
  time_in_minutes = 0 if time_in_minutes == MINUTES_IN_DAY
  time_in_minutes
end

puts before_midnight('00:00') == 0