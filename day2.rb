require 'byebug'
rows = File.readlines('day2.txt').map(&:chomp)

total_sum = 0

rows.each do |r|
  nums = r.split(' ').map(&:to_i)
  potential_num, fac = nil

  nums.each do |num|
    potential_num = num
    fac = nums.find { |n| n != num && num % n == 0 }
    break if fac
  end

  total_sum += (potential_num / fac)
end

puts total_sum
