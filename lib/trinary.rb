def trinary_convert(input)
  number = input.to_i
  boxnumber = 2
  position = 0
  trinary_store = []
  empty_check = 0

  while 3**position <= number do
    position += 1
  end

  position -= 1

  position.downto(0) do |base_power|
    boxnumber.downto(0) do |count|
      if(number - count*(3**base_power) >= 0 && empty_check == 0)
        trinary_store << count
        empty_check = count
        number -= count*(3**base_power)
      end
    end
    empty_check = 0
  end
  trinary_store.join("").to_i
end

puts trinary_convert("200")
