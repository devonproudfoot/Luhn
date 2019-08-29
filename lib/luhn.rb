module Luhn
  def self.is_valid?(number)
    numbers = number.to_s.split('').reverse.map{|num| num.to_i}
    total = 0
    times = 0
    numbers.each do |digit|
      times += 1
      if times % 2 == 0
        digit = digit * 2
        if digit >= 10
          digit -= 9
        end
      end

      total += digit
    end

    if total % 10 == 0
      return true
    else
      return false
    end

  end
end