def trinary_convert(input)
  number = input.to_i
  position = 0
  trinary_store = []

  while 3**position <= number do
    position += 1
  end

  position -= 1

  position.downto(0) do |base_power|

    if(number - 2*(3**base_power) >= 0)
      trinary_store << "2"
      number -= 2*(3**base_power)
    elsif (number - 3**base_power >= 0)
      trinary_store << "1"
      number -= 3**base_power
    elsif
      trinary_store << "0"
    end
  end

  trinary_store.join("").to_i
end

#puts trinary_convert("200")
