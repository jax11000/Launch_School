# START
require 'pry'

def monthly_payment(total, monthly_int, length_months)
  monthly_pay = total * monthly_int / (1 - (1 + monthly_int)**-length_months)
  monthly_pay
end
puts "Hello welcome to the loan calculator!"
loan_total = ''
puts "Please enter your total loan amount" # get loan amount
loop do
  loan_total = gets.chomp
  if loan_total.empty? || loan_total.to_i < 0
    puts "Please enter a valid total."
  else
    break
  end
end
puts "Please enter the APR." # get APR as an integer
apr = nil
loop do
  apr = gets.chomp
  if apr.empty? || apr.to_f < 0
    puts "Please enter a valid interest"
  else
    break
  end
end
monthly_interest = (apr.to_f / 12) / 100 # determine monthly interest rate
puts "Please enter loan duration in years." # get loan duration in years
duration_years = nil
loop do
  duration_years = gets.chomp
  if duration_years.empty? || duration_years.to_i < 0
    puts "Please enter a valid duration"
  else
    break
  end
end
duration_months = duration_years.to_f * 12 # - convert into months
monthly_pay = loan_total.to_i * monthly_interest / (1 - (1 + monthly_interest)**-duration_months)
puts "Your monhtly payment is #{monthly_pay.to_i}"
