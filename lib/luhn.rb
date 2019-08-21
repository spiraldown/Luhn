module Luhn
  def self.is_valid?(number)
    num = number.to_s.chars.map(&:to_i)
      counter = num.length
      until counter <= 0 do
        counter = counter -2          
        num[counter] = (num[counter] * 2) unless counter == -1
        if num[counter] >= 9
          num[counter] = (num[counter] - 9)
        end
      end

    sum = num.inject(0){|sum,x| sum + x }

    if sum % 10 == 0
      return true
    else
      return false
    end

  end
end

