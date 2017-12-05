require 'byebug'

def sum_consec_numbers(string)
  sum = 0

  0.upto(string.length - 1) do |i|
    if string[i] == string[(i + 1) % string.length]
      sum += string[i].to_i
    end
  end

  sum
end


def sum_halfway_numbers(string)
  sum = 0

  0.upto(string.length - 1) do |i|
    i2 = (i + (string.length) / 2) % (string.length)
    num1, num2 = string[i], string[i2]
    sum += num1.to_i if num1 == num2
  end

  sum
end
