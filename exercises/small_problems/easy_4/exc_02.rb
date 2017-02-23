def suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  digit = century % 10

  case digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end


def century(year)
  century = 0
  if year % 100 == 0
    century = (year / 100)
  else
    century = ((year / 100) + 1)
  end
  century.to_s.concat(suffix(century))
end

